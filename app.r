#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~				  Cristanti Group Agambiae Orthology & Expression Tool						  ~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## Author: Doko-Miles Thorburn <dthorburn@imperial.ac.uk>
## Last Update: 12/12/21

## Load in all of the libraries
suppressMessages(library(data.table))
suppressMessages(library(ggpattern))
suppressMessages(library(ggplot2))
suppressMessages(library(ggstance))
suppressMessages(library(stringr))
suppressMessages(library(ggtree))
suppressMessages(library(dplyr))
suppressMessages(library(shiny))

## loading in data
load(file = "All_Expression_Dat_011221.RData")
load(file = "All_Orthology_Dat_261021.RData")
load(file = "AgamP4_GO_Dataset_011221.RData")
load(file = "All_Species_Tree_271021.RData")

## A temporary fix for the incorrect column names
Pirbright_melted[,"variable" := gsub(pattern = "20h_", replacement = "", variable) %>% 
								gsub(pattern = "36h_", replacement = "", .) %>%
								gsub(pattern = "mean_", replacement = "", .)]

## Defining the plotting functions - this is simply to make the plots more intuitive, 
## but can be reduced to make the tool run more smoothly if needed. 
Rose_Gene <- function(temp_gene){
  temp_dat <- subset(Rose_melted, Gene_ID == temp_gene)
  temp_dat2 <- subset(temp_dat, !grepl(pattern = "Mean", variable))
  if(nrow(temp_dat2) != 0){
    ggplot(temp_dat2, aes(x = variable, y = value, fill = Sex, pattern = Dataset)) +
      geom_bar_pattern(stat = "identity", pattern_fill = "black", colour = "black", width = 1) +
      scale_pattern_manual(values = c(Pupae = "circle", Larvae = "none")) +
      theme_classic(base_size = 20) +
      theme(axis.text.x = element_text(angle = 45, hjust =1)) +
      scale_colour_manual(values = c("black", "grey")) +
      labs(x = "Developmental Stage", y = "FPKM", title = paste("Rose dataset:", temp_gene), pattern = "Stage")
  } else {
    qplot(main = paste0("ERROR: No data found on gene ", temp_gene, " in Rose dataset\n"))+
    theme_classic(base_size = 20)
  }
}
Taxiarchi_Gene <- function(temp_gene, include_b2 = 0){
  temp_dat <- subset(Taxi_melted, Gene_ID == temp_gene)
  if(include_b2 == 0){
  	temp_dat <- rbind(temp_dat, subset(Taxi_melted, grepl("^[V]", Gene_ID)))
  } else if(include_b2 == 1){
  	temp_dat <- rbind(temp_dat, subset(Taxi_melted, grepl("^[b|V]", Gene_ID)))
  }

  if(nrow(temp_dat) != 0){
    ggplot(temp_dat, aes(x = Population, y = value, fill = Gene_ID)) +
      geom_bar(stat = "identity", colour = "black", width = 1, position = "dodge") +
      theme_classic(base_size = 20) +
      labs(x = "Meiotic Population", y = "FPKM", fill = "Expression ID", 
		title = paste0("Taxiarchi dataset: ", temp_gene)) +
      scale_x_discrete(expand = c(0,0)) +
      scale_y_continuous(expand = c(0,0)) 
  } else {
    qplot(main = paste0("ERROR: No data found on gene ", temp_gene, " in Taxiarchi dataset\n"))+
    theme_classic(base_size = 20)
  }
}
Baker_Gene <- function(temp_gene, dataset = "Baker"){
  temp_dat <- subset(get(paste0(dataset, "_melted")), Gene_ID == temp_gene)
  if(nrow(temp_dat) != 0 & !sum(grepl(pattern = "N/A", temp_dat$value)) == nrow(temp_dat)){
    plot <- ggplot(temp_dat, aes(x = variable, y = as.numeric(value), fill = Sex)) +
		  geom_bar(stat = "identity", colour = "black", width = 1) +
		  theme_classic(base_size = 20) +
		  theme(axis.text.x = element_text(angle = 45, hjust =1)) +
		  scale_y_continuous(expand = c(0,0)) 
    if(dataset == "Baker"){
      plot + labs(x = "Anatomical Feature", y = "log2(RMA)", title = paste0("Baker dataset: ", temp_gene)) +
		    scale_x_discrete(expand = c(0,0)) 
    } else if(dataset == "Pirbright"){
      x_order <- Pirbright_melted$variable %>% unique
      plot + labs(x = "Developmental Stage", y = "FPKM", title = paste0("Unpublished Pirbright dataset: ", temp_gene)) +
		   scale_x_discrete(limits = x_order, expand = c(0,0))
    }
  } else {
    qplot(main = paste0("ERROR: No data found on gene ", temp_gene, " in Baker dataset\n"))+
    theme_classic(base_size = 20)
  }
}
Papa_Gene <- function(temp_gene, include_oviposit = 0){
  temp_dat <- subset(Papa_melted, Gene_ID == temp_gene)
  if(include_oviposit == 0){
    temp_dat <- subset(temp_dat, Oviposit_Data == 0)
  }
  if(nrow(temp_dat) != 0){
    ggplot(temp_dat, aes(x = variable, y = as.numeric(value), pattern = TMA_Hit, fill = Sex)) +
      scale_pattern_manual(values = c(Nonunique = "circle", Unique = "none")) +
      geom_bar_pattern(stat = "identity", position = "stack", pattern_fill = "black", colour = "black", width = 1) +
      theme_classic(base_size = 20) +
      labs(x = "Anatomical Feature", y = "log2(RMA)", title = paste0("Baker dataset: ", temp_gene)) +
      theme(axis.text.x = element_text(angle = 45, hjust =1)) +
      scale_x_discrete(expand = c(0,0)) +
      scale_y_continuous(expand = c(0,0)) +
      labs(x = "Developmental Stage", y = "TPM", pattern = "TPM Read\nMapping",
		title = paste0("Papa dataset: ", temp_gene, "| Oviposit Data Included: ", ifelse(include_oviposit == 0, "No", "Yes"))) 
  } else {
    qplot(main = paste0("ERROR: No data found on gene ", temp_gene, " in Papa dataset\n"))+
    theme_classic(base_size = 20)
  }
} 

## The Orthology Query Tools
## Part of the handling of multiple OGs from a single gene ID
Multiple_Hits_OG <- function(row_num){
  temp_OG <- dat[as.numeric(row_num),] %>% str_split(pattern = ":? ") %>% unlist
  temp_OG[1] %>% return
}
## Defining the function to parse the OrthoFinder output. 
Orthology <- function(query, input_feature = "Gene"){
  ## Parameters for handling errors and debugging
  Orthology_Errors <- ""
  move_to_next <- 1

  ## Handling the input feature types, so can use transcript and protein IDs
  if(input_feature == "Protein"){
    query_gene <- query
  } else if(input_feature == "Transcript"){
    query <- gsub(query, pattern = "([A-Z])(\\.[0-9]$)", replacement = "\\1")
    query_gene <- Gene_Locs[grepl(pattern = query, Transcript_ID), Protein_ID]
  } else if(input_feature == "Gene"){
    ## This handles the potential outcome of a gene having proteins in multiple different orthogroups
    query_gene <- Gene_Locs[grepl(pattern = query, Gene_ID), Protein_ID]
    if(length(query_gene) >= 2){
      OGs <- ""
      for(i in 1:length(query_gene)){
		OGs[i] <- grep(pattern = query_gene[i], dat$V1)
      }
      if(length(unique(OGs)) > 1){
		Mult_OGs <- sapply(FUN = Multiple_Hits_OG, unique(OGs)) %>% as.vector
		temp_orths <- lapply(FUN = Orthology, Mult_OGs) %>% rbindlist
		move_to_next <- 0
      }
    }
  }

  if(move_to_next == 1){
    query_row <- grep(pattern = query_gene, dat$V1)
    ## Handling the output if no/multiple orthogroups are identified - which I'm unsure if the latter is even possible.
    if(length(query_row) == 0){
      Orthology_Errors <- paste0(Orthology_Errors, "\nERROR: No results found for ", query_gene, ", please check query and try again\nIf the alternative IDs work, but not this feature, please report this error to d.thorburn@imperial.ac.uk")
    } else  if(length(query_row) >= 2){
      ## Handing the potential outcome of a protein being in multiple OGs, then it recursively calls each OG and returns them all in 1 data.table
      Mult_OGs <- sapply(FUN = Multiple_Hits_OG, unique(OGs)) %>% as.vector
      temp_orths <- lapply(FUN = Orthology, Mult_OGs) %>% rbindlist
      Orthology_Errors <- paste0(Orthology_Errors, "\nWARN: ", query_gene, " is in ", length(unique(OGs)), " orthogroups\n")
      if(str_count(Orthology_Errors) > 0){
		message(Orthology_Errors)
      }
      return(temp_orths)
    } else  if(length(query_row) == 1){
      ## This was a little tricky - I had to use capture groups to NOT take the ".1" from anything starting with .1
      temp_pattern <- dat[query_row,] %>% str_split(pattern = ":? ") %>% unlist %>% gsub(., pattern = "([A-Z])(\\.[0-9]$)", replacement = "\\1")
      temp_orths <- Gene_Locs[Gene_Locs$Protein_ID %in% temp_pattern[2:length(temp_pattern)],] %>% unique
      
      ## Just in case this is still problematic and some proteins are not assigned correctly
      if(length(temp_pattern[!temp_pattern %in% temp_orths$Protein_ID]) != 1){
		Orthology_Errors <<- paste0(Orthology_Errors, "\nERROR: Not all proteins found for ", query_gene, "\nPlease report this error to d.thorburn@imperial.ac.uk\n")
      }
      temp_orths[,"Orthogroup_ID" := temp_pattern[1]]
      if(str_count(Orthology_Errors) > 0){
		message(Orthology_Errors)
      }
      return(temp_orths)
    }
  } else if(move_to_next == 0){
    Orthology_Errors <- paste0(Orthology_Errors, "\nWARN: ", query, " has proteins in ", length(unique(OGs)), " orthogroups\n")
    if(str_count(Orthology_Errors) > 0){
      message(Orthology_Errors)
    }
    return(temp_orths)
  }
}


## UI Settings
ui <- fluidPage( 
  pageWithSidebar(
  # Application title
  headerPanel(strong("OrthoExpress: ", em("Anopheles gambiae"), "Orthology, Expression, & Gene Function Tool")),

  ## The options section
  sidebarPanel(
    textInput("gene_id", h3("Query:"), value = ""),
    width = 2,
    helpText("For expression plots use ", em("Anopheles gambiae")," VectorBase gene IDs (e.g., AGAP001094). Transcript and protein IDs and orthologous sequences is not currently implemented.", br(), br(), "For orthology assignment select annotation feature below 
      and use VectorBase or Ensembl IDs for any of the species included (e.g., ", em("Drosophila melanogaster")," transcript FBtr0077192). See More Info tab for species information. "),
    submitButton("Submit Query"),    
    hr(style="border-color: #b2b2b3; margin-bottom: 0px"),

    helpText("To report bugs or request data to be added, please contact Miles Thorburn <d.thorburn@imperial.ac.uk>")
  ),

  ## Defining the output and panels
  mainPanel(width = 10, 
    tabsetPanel(
      
    tabPanel("Expression Plots", 
      	    checkboxGroupInput("checkGroup", h4("Expression Datasets:"), 
						    choices = list("Papa et al. 2017" = "Papa",
										     "Unpublished Pirbright" = "Pirbright",
										     "Taxiarchi et al. 2019 " = "Taxiarchi",
										     "Baker et al. 2011" = "Baker", 
										     "Rose et al. 2016" = "Rose"
										     ),
						      selected = 0, inline = TRUE),
	helpText("Select up to 5 datasets to plot. For more information on expression units or references see the \"More Info\" tab."),
#    radioButtons("oviGroup", h4("Papa dataset, include oviposit data?"),
#						      choices = list("Yes" = 1, "No" = 0), selected = 0, inline = TRUE),
    radioButtons("b2Group", h4(paste0("Taxiarchi dataset, include beta-2 data?")),
						      choices = list("Yes" = 1, "No" = 0), selected = 0, inline = TRUE),

    hr(style="border-color: #b2b2b3; margin-bottom: 0px"),

		plotOutput("plot1"),
		plotOutput("plot2"),
		plotOutput("plot3"),
		plotOutput("plot4"),
		plotOutput("plot5")
      ),
      
      tabPanel("Orthology Table", 
  	    radioButtons("annGroup", h4("Annotation Feature"),
						      choices = list("Gene" = "Gene", "Transcript" = "Transcript", "Protien" = "Protein"), selected = "Gene", inline = TRUE),
	    helpText("Only needed if not using ", em("Anopheles gambiae"), " gene IDs"),

  	    radioButtons("OrthSimp", h4("Include transcripts in orthology table?"),
						  choices = list("Yes" = 1, "No" = 0), selected = 0, inline = TRUE),
	    downloadButton("downloadData", "Download Orthology Table"),

	    hr(style="border-color: #b2b2b3; margin-bottom: 0px"),
		dataTableOutput("Orth_Tab")
      ),
      
      tabPanel("Orthology Plot", 
		plotOutput("Orth_Plot", height = "850px"),
      ),
      
      tabPanel("Gene Function", 
      	radioButtons("funGroup", h4("Functional Annotation Database:"),
						      choices = list("GOs" = "GOs", "Pfam" = "Pfam", "InterPro" = "InterPro"), selected = "GOs", inline = TRUE),
  	    radioButtons("GOAll", h4("Search GO, Pfam, & InterPro Annotations?"),
						      choices = list("Yes" = 1, "No" = 0), selected = 0, inline = TRUE),
  	    downloadButton("downloadGOData", "Download Gene Ontology (GO) Table"),
    	downloadButton("downloadPFAMData", "Download Protien Family (Pfam) Table"),
	    downloadButton("downloadINTERPROData", "Download InterPro Table"),
		hr(style="border-color: #b2b2b3; margin-bottom: 0px"),
		dataTableOutput("GOs_Tab")
      ),

      tabPanel("More Info",
		h2("Motivation:"),
		h4("Whilst VectorBase is a very useful tool, the expression datasets can be tedious to use and hard to understand. Plus, there is a lot of data in the lab that is currently unused which could prove useful to others. Hence, I created a tool to plot the most commonly used expression datasets from VB which we can add our data too easily. 
			Moreover, the orthology analysis on VB is quite limited, likely due to computational requirements of running a site-wide analysis every time a new species is added. Hence, I have conducted an orthology analysis for a series of mosquito and other insect species."),
		h4("Nace is also working on re-analysing the main expression datasets used in the lab with the current gene annotations."),
		h4("Altogether, this tool should expidite candidate gene searches, including through using gene/transcript/protein IDs found in papers on any of the species included herein."),
		hr(),

		h2("How it works:"),
		h4(strong("Expression: "), "The first step is ensuring the query is either an ", em("Anopheles gambiae"), " gene, or that the query has only 1 ", em("A. gambiae"),
		"ortholog. Then the requested datasets are simply subset to only include that data and plotted in an informative manner."),
		h4(strong("Orthology: "), "Orthology was assigned using OrthoFinder (Emms & Kelly, 2019). OrthoFinder infers orthogroups (both orthology and paralogy) for all species based on an 
		all-versus-all peptide comparison. It also creates gene trees for all orthogroups and infers a species tree (see \"Orthology Plot tab\"). Gene trees are available upon request, just provide the orthogroup ID.",
		"This tool first converts the query into the protein accession, then finds the associated orthogroup and returns that table. If more than one orthogroup
		is identified (i.e., a gene with multiple transcripts in different orthogroups), the function will recursively run through each orthogroup."),
		hr(),
		
#		h2("Known Bugs:"),
#		hr(),

		h2("Expression Units:"),
		h4(strong("TPM: Transcript Per Million."), " This is calculated following this logic, for every 1,000,000 RNA molecules in the RNA-seq sample, ", em("x"), " came from this gene/transcript. Unique hits are reads with a single best match during alignment, and nonunique reads map to two of more transcripts."),
		h4(strong("RPKM: Reads Per Kilobase of transcript per Million reads mapped."), " This uses the same logic as above to estimate reads per million, but aditionally divides by the length of the gene in kb."),
		h4(strong("FPKM: Fragments Per Kilobase of transcript per Million reads mapped."), " Whereas RPKM was developed for single-end RNAseq analyses, FPKM uses paired-end sequencing. Here, FPKM also accounts for whether both reads mapped to the same trascript"),
		h4(strong("RMA: Robust Multiarray Averaging."), " A method of normalising microarray probe intesnities, and includes background correction, normalization, perfect match correction and summarization with the RMA algorithm."),
		hr(),

		h2("References:"),
		h4(strong("Baker, D. A., Nolan, T., Fischer, B., Pinder, A., Crisanti, A. and Russell, S."), 
		  " (2011). Female-biased gene expression in the malaria mosquito Anopheles gambiae. BMC Genomics 12, 1–12. doi: 10.1016/j.cub.2005.03.005."),
		h4(strong("Papa, F., Windbichler, N., Waterhouse, R. M., Cagnetti, A., D’Amato, R., Persampieri, T., Lawniczak, M. K. N., Nolan, T. and Papathanos, P. A."), 
		  " (2017). Rapid evolution of female-biased genes among four species of Anopheles malaria mosquitoes. Genome Research 27, 1536–1548. doi: 10.1101/gr.217216.116."),
		h4(strong("Rose, G., Krzywinska, E., Kim, J., Revuelta, L., Ferretti, L. and Krzywinski, J."), 
		  "  (2016). Dosage compensation in the African malaria mosquito Anopheles gambiae. Genome Biology and Evolution 8, 411–425. doi: 10.1093/gbe/evw004."),
		h4(strong("Emms, D. M. and Kelly, S."), 
		  " (2019). OrthoFinder: Phylogenetic orthology inference for comparative genomics. Genome Biology 20, 1–14. doi: 10.1101/466201."),
		h4(strong("Taxiarchi, C., Kranjc, N., Kriezis, A., Kyrou, K., Bernardini, F., Russell, S., Nolan, T., Crisanti, A. and Galizi, R."), 
		  " (2019). High-resolution transcriptional profiling of Anopheles gambiae spermatogenesis reveals mechanisms of sex chromosome regulation. Scientific Reports 9, 1–12. doi: 10.1038/s41598-019-51181-1."),
		h4(strong("Pirbright Institute"), 
		  " (Unpublished). ", a("Data Set", href = "https://vectorbase.org/vectorbase/app/record/dataset/DS_bf500a6707"), ": Developmental transcriptome of sexed Anopheles gambiae larvae and adult mosquitoes group 2. [Downloaded from VectorBase; 10/2021]"),
		hr()
      ),
      )
    )
  )
)
#shinyApp(ui, server)

## Server Logic
server <- function(input, output) {
  #shinyAppDir(".")
  errors <- ""
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Expression output  
  ## Defining the parameters and removing any white spaces in the input
  gene_id <- reactive({
    gene_id <- input$gene_id %>% trimws
  })

  ## A little redundant repeating the if statement, but it's the best way to have plots always plotting in the plot1
  ## box, rather than each having a set place on the page. 
  ## NB. The first if statement is simply to avoid errors if less than x number of choices are selected. The second is
  ##     for the papa oviposit data inclusion

  ## NEW SOLUTION NEEDED AS THE ORDER THEY PRESS CHANGES WHICH PLOT WINDOW IS TAKEN BY WHICH PLOT. CAUSES STRANGE PLOTS. 
  output$plot1 <- renderPlot({
    if(length(input$checkGroup)>=1){
      if(grepl(pattern = "Papa", input$checkGroup[1]) %>% sum == 1){
		string <- paste0(input$checkGroup[1], "_Gene(\"", gene_id(), "\", include_oviposit = ", input$oviGroup,")")
		eval(parse(text = string))
      } else if(grepl(pattern = "Pirbright", input$checkGroup[1]) %>% sum == 1){
		Baker_Gene(gene_id(), dataset = "Pirbright")
      } else if(grepl(pattern = "Taxiarchi", input$checkGroup[1]) %>% sum == 1){
		Taxiarchi_Gene(gene_id(), include_b2 = input$b2Group)
      } else {
		string <- paste0(input$checkGroup[1], "_Gene(\"", gene_id(), "\")")
		eval(parse(text = string))
      }
    }
  })
  output$plot2 <- renderPlot({
    if(length(input$checkGroup)>=2){
      if(grepl(pattern = "Pirbright", input$checkGroup[2]) %>% sum == 1){
		Baker_Gene(gene_id(), dataset = "Pirbright")
      } else if(grepl(pattern = "Taxiarchi", input$checkGroup[2]) %>% sum == 1){
		string <- paste0(input$checkGroup[2], "_Gene(\"", gene_id(), "\", include_b2 = ", input$b2Group,")")
		eval(parse(text = string))
      } else {
		string <- paste0(input$checkGroup[2], "_Gene(\"", gene_id(), "\")")
		eval(parse(text = string))
      }
    }
  })
  output$plot3 <- renderPlot({
    if(length(input$checkGroup)>=3){
	    if(grepl(pattern = "Taxiarchi", input$checkGroup[3]) %>% sum == 1){
			Taxiarchi_Gene(gene_id(), include_b2 = input$b2Group)
	    } else {
			string <- paste0(input$checkGroup[3], "_Gene(\"", gene_id(), "\")")
			eval(parse(text = string))
	    }
	}
  })
  output$plot4 <- renderPlot({
    if(length(input$checkGroup)>=4){
      string <- paste0(input$checkGroup[4], "_Gene(\"", gene_id(), "\")")
      eval(parse(text = string))
    }
  })
  output$plot5 <- renderPlot({
    if(length(input$checkGroup)>=5){
      string <- paste0(input$checkGroup[5], "_Gene(\"", gene_id(), "\")")
      eval(parse(text = string))
    }
  })


  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Orthology output  
  Orth_dat <- reactive({
  	if(gene_id() != ""){
	    string <- paste0("Orthology(\"", gene_id(), "\", input_feature = \"", input$annGroup, "\")")
    	out_tab <- eval(parse(text = string))
    	out_tab
    }
  })
  output$Orth_Tab <- renderDataTable({
    if(input$OrthSimp == 1){
    	Orth_dat()
    }	else if(input$OrthSimp == 0){
    	Orths <- Orth_dat()
    	Orths[,!c("Transcript_ID", "Protein_ID")] %>% unique
    }
  })
  output$downloadData <- downloadHandler(
    filename = function() {
      paste(gene_id(), "_Orthology.csv", sep = "")
    },
    content = function(file) {
      write.csv(Orth_dat(), file, row.names = FALSE)
    }
  )

  output$Orth_Plot <- renderPlot({    
    Orths <- Orth_dat()
    ## There was too much expansion - it was becuase I was plotting the number of transcripts...
    Orths <- Orths[,c("Species", "Gene_ID")] %>% unique
    Orth_tab <- table(Orths$Species) %>% as.data.table 
    names(Orth_tab) <- c("Full_Name", "Num_Orthologs")
    Orth_tab[,"Full_Name" := ifelse(grepl(pattern = "Aedes_aegypti_lvpagwg", Full_Name), "Aedes_aegypti", Full_Name)]

    ## This awfulness is the simplest solution for acutally getting this damn thing to work. Using the same column name in different
    ## dfs just kept causing errors, despite actually working for a bit when testing. 
    Metadat2 <- merge(Metadat1, Orth_tab, all = TRUE, by = "Full_Name")[, union(names(Metadat1), names(Orth_tab))] 
    Metadat2$Num_Orthologs <- ifelse(is.na(Metadat2$Num_Orthologs), 0, Metadat2$Num_Orthologs)
    Metadat2$Order2 <- Metadat2$Order %>% as.factor

    tre <-  MT  %<+% Metadat1 +
		geom_tiplab(aes(colour = Order, label=paste0('italic(', genus, ')~italic(', species,')')), parse=TRUE, hjust = 0, show.legend = F, align=TRUE, linesize=.5, size = 6) +
		geom_text2(aes(label=label, subset = !is.na(as.numeric(label)) & as.numeric(label) > 50), hjust = -0.1, colour = "darkgrey", size = 3.5) +
		scale_colour_manual(values = c("red", "blue", "darkorange", "darkgreen")) 
    tre2 <- facet_plot(tre  + theme_tree2(), panel = 'Number of Orthologous Genes', 
				  data = Metadat2, geom = geom_barh,
				  mapping = aes(x = Num_Orthologs, fill = Order2),
				  stat='identity', colour = "black", width =1) +
		scale_x_continuous(expand = c(0,0), limits =c(0,36)) +
		scale_fill_manual(values = c("red", "blue", "darkorange", "darkgreen")) + 
		labs(fill = "Phylogenetic Order") + theme(legend.position = "bottom") +
		theme(axis.text = element_text(size = 20), strip.text.x = element_text(size = 20), 
				  legend.text = element_text(size = 20), legend.title = element_text(size = 25),
				  axis.line.x = element_blank(), axis.ticks.x = element_blank(), axis.text.x = element_blank()) 
    facet_plot(tre2, data = Metadat2, panel = "Number of Orthologous Genes", geom = geom_text, 
				  mapping = aes(x = Num_Orthologs + 0.4, label = Num_Orthologs), size = 6, vjust = 0.45)
  })
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Function output

  GOs_dat <- reactive({
    dat <- subset(GOs, Gene_ID == gene_id())
    setkey(dat, GO_Domain, GO_ID)
    dat
  })
  INTERPRO_dat <- reactive({
    dat <- subset(INTERPROs, Gene_ID == gene_id())
    setkey(dat, Gene_ID, AA_Start)
    dat
  })
  PFAMs_dat <- reactive({
    dat <- subset(PFAMs, Gene_ID == gene_id())
    setkey(dat, Gene_ID, Pfam_ID, AA_Start)
    dat
  })
  output$GOs_Tab <- renderDataTable({
  	if(input$funGroup == "GOs"){	
	  	if(input$GOAll == 0){
	    	GOs_dat()
	  	} else if(input$GOAll == 1){
	  		GOs
	  	}
  	} else if(input$funGroup == "Pfam"){
 	  	if(input$GOAll == 0){
	    	PFAMs_dat()
	  	} else if(input$GOAll == 1){
	  		PFAMs
	  	}
	} else if(input$funGroup == "InterPro"){
  	  	if(input$GOAll == 0){
	    	INTERPRO_dat()
	  	} else if(input$GOAll == 1){
	  		INTERPROs
	  	}
	}
  })
  output$downloadGOData <- downloadHandler(
    filename = function() {
      paste(gene_id(), "_GOs.csv", sep = "")
    },
    content = function(file) {
      write.csv(GOs_dat(), file, row.names = FALSE)
    }
  )

  output$downloadPFAMData <- downloadHandler(
    filename = function() {
      paste(gene_id(), "_PFAMs.csv", sep = "")
    },
    content = function(file) {
      write.csv(PFAMs_dat(), file, row.names = FALSE)
    }
  )
  output$downloadINTERPROData <- downloadHandler(
    filename = function() {
      paste(gene_id(), "_InterPros.csv", sep = "")
    },
    content = function(file) {
      write.csv(INTERPRO_dat(), file, row.names = FALSE)
    }
  )
}
shinyApp(ui, server)  
