#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~                  Cristanti Group Agambiae Orthology & Expression Tool                          ~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
## Author: Miles Thorburn <dthorburn@imperial.ac.uk>
## Last Update: 21/10/21
## VectorBase is very useful, but the new version isn't as use friendly as before, and the orthology
## assignment seems poor to me. Hence creating this.
## Load in all of the libraries
suppressMessages(library(data.table))
suppressMessages(library(ggpattern))
suppressMessages(library(ggplot2))
suppressMessages(library(dplyr))
suppressMessages(library(shiny))

## Reading in the data and setting the directory
#  params.directory <- "D:/Imperial/Projects/01_Neg_Dom_Allele/06_RNA_Seq"
#  setwd(params.directory)
#  Rose_melted <- fread("Processed_Rose_RNASeq.csv")
#  Taxi_melted <- fread("Processed_Taxiarchi_RNASeq.csv")
#  Papa_melted <- fread("Processed_Papa_RNASeq.csv")
#  Baker_melted <- fread("Processed_Baker_RNASeq.csv")
#  Pirbright_melted <- fread("Processed_Pirbright_RNASeq.csv")

## Saving all data for ease of use
#save.image(file = "All_Expression_Dat_211021.RData")

## loading in data
#load(file = "All_Expression_Dat_201021.RData")
load(file = "All_Expression_Dat_211021.RData")

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
Taxiarchi_Gene <- function(temp_gene){
  temp_dat <- subset(Taxi_melted, Gene_ID == temp_gene)
  if(nrow(temp_dat) != 0){
    ggplot(temp_dat, aes(x = Population, y = value)) +
      geom_bar(stat = "identity", fill = "slategrey", colour = "black", width = 1) +
      theme_classic(base_size = 20) +
      labs(x = "Meiotic Population", y = "FPKM", 
        title = paste0("Taxiarchi dataset: ", temp_gene, "\nTestes Specific: ", ifelse(unique(temp_dat$Testes_Specific) == -1, "No", "Yes"), "; Ovaries Specific: ", ifelse(unique(temp_dat$Ovaries_Specific) == -1, "No", "Yes"))) +
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
    cat(paste0("ERROR: No data found on gene ", temp_gene, " in ", dataset, " dataset\n"))
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
        title = paste0("Papa dataset: ", temp_gene, "\nOviposit Data Included: ", ifelse(include_oviposit == 0, "No", "Yes"))) 
  } else {
    qplot(main = paste0("ERROR: No data found on gene ", Papa, " in Papa dataset\n"))+
    theme_classic(base_size = 20)
  }
} 

## UI Settings
ui <- pageWithSidebar(
  # Application title
  headerPanel(strong("OrthoExpress: ", em("Anopheles gambiae"), "Orthology & Expression Tool")),

  ## The options section
  sidebarPanel(
    textInput("gene_id", h3("Query Gene:"), value = ""),
    helpText("Use VectorBase gene IDs (e.g., AGAP001094).", br(), 
              "I'm working on implementing using ortholog IDs too, but this will take some time."),
    checkboxGroupInput("checkGroup", h3("Expression Datasets:"), 
                              choices = list("Papa et al. 2017" = "Papa",
                                             "Unpublished Pirbright" = "Pirbright",
                                             "Baker et al. 2011" = "Baker", 
                                             "Taxiarchi et al. 2019 " = "Taxiarchi",
                                             "Rose et al. 2016" = "Rose"
                                             ),
                              selected = 0),
    helpText("For more information on expression units or the naming conventions used see the \"More Info\" tab."),

    radioButtons("oviGroup", h3("Papa dataset, include oviposit columns?"),
                              choices = list("Yes" = 1, "No" = 0), selected = 0),
    submitButton("Select Expression Data"),
    helpText("To report bugs or request data to be added, please contact Miles Thorburn <d.thorburn@imperial.ac.uk>")
  ),

  ## Defining the output and panels
  mainPanel(
    tabsetPanel(
      tabPanel("Expression Datasets", 
        plotOutput("plot1"),
        plotOutput("plot2"),
        plotOutput("plot3"),
        plotOutput("plot4"),
        plotOutput("plot5")
      ),
      tabPanel("Orthology", 
      
      ),
      tabPanel("More Info",
        h2("Phylogenetic Species Tree Based on Orthology:"),
        h4("OrthoFinder (Emms & Kelly, 2019) was used to infer the species tree based on an all-versus-all peptide comparison among all insect species. Here, colours represent different orders: Blue is Diptera; Green is Lepidoptera; Yellow is Hymenoptera; and Red is Coleoptera."),
        img(src = "Consensus_Species_Tree_OrthoFinder.png", width = 360, height = 495),
        br(),

        h2("Expression Units:"),
        h4(strong("TPM: Transcript Per Million."), " This is calculated following this logic, 
          for every 1,000,000 RNA molecules in the RNA-seq sample, ", em("x"), " came from this gene/transcript. Unique hits are reads with a single best match during alignment, and nonunique reads map to two of more transcripts."),
        h4(strong("RPKM: Reads Per Kilobase of transcript per Million reads mapped."), " This uses the same logic as above to estimate reads per million, but aditionally divides by the length of the gene in kb."),
        h4(strong("FPKM: Fragments Per Kilobase of transcript per Million reads mapped."), " Whereas RPKM was developed for single-end RNAseq analyses, FPKM uses paired-end sequencing. Here, FPKM also accounts for whether both reads mapped to the same trascript"),
        h4(strong("RMA: Robust Multiarray Averaging."), " A method of normalising microarray probe intesnities, and includes background correction, normalization, perfect match correction and summarization with the RMA algorithm."),
        br(),
               
        h2("References:"),
        h4(strong("Baker, D. A., Nolan, T., Fischer, B., Pinder, A., Crisanti, A. and Russell, S."), 
          " (2011). Female-biased gene expression in the malaria mosquito Anopheles gambiae. BMC Genomics 12, 1–12. doi: 10.1016/j.cub.2005.03.005."),
        h4(strong("Papa, F., Windbichler, N., Waterhouse, R. M., Cagnetti, A., D’Amato, R., Persampieri, T., Lawniczak, M. K. N., Nolan, T. and Papathanos, P. A."), 
          " (2017). Rapid evolution of female-biased genes among four species of Anopheles malaria mosquitoes. Genome Research 27, 1536–1548. doi: 10.1101/gr.217216.116."),
        h4(strong("Rose, G., Krzywinska, E., Kim, J., Revuelta, L., Ferretti, L. and Krzywinski, J."), 
          "  (2016). Dosage compensation in the African malaria mosquito Anopheles gambiae. Genome Biology and Evolution 8, 411–425. doi: 10.1093/gbe/evw004."),
        h4(strong("Taxiarchi, C., Kranjc, N., Kriezis, A., Kyrou, K., Bernardini, F., Russell, S., Nolan, T., Crisanti, A. and Galizi, R."), 
          " (2019). High-resolution transcriptional profiling of Anopheles gambiae spermatogenesis reveals mechanisms of sex chromosome regulation. Scientific Reports 9, 1–12. doi: 10.1038/s41598-019-51181-1."),
        h4(strong("Pirbright Institute"), 
          " (Unpublished). ", a("Data Set", href = "https://vectorbase.org/vectorbase/app/record/dataset/DS_bf500a6707"), ": Developmental transcriptome of sexed Anopheles gambiae larvae and adult mosquitoes group 2")
      ),
      tabPanel("Debugging", textOutput("txt"))
    )
  )
)

## Server Logic
server <- function(input, output) {
  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Expression output  
  shinyAppDir(".")
  
  ## Defining the parameters and removing any white spaces in the input
  gene_id <- reactive({
    gene_id <- input$gene_id %>% trimws
  })

  ## A little redundant repeating the if statement, but it's the best way to have plots always plotting in the plot1
  ## box, rather than each having a set place on the page. 
  ## NB. The first if statement is simply to avoid errors if less than x number of choices are selected. The second is
  ##     for the papa oviposit data inclusion
  output$plot1 <- renderPlot({
    if(length(input$checkGroup)>=1){
      if(grepl(pattern = "Papa", input$checkGroup[1]) %>% sum == 1){
        string <- paste0(input$checkGroup[1], "_Gene(\"", gene_id(), "\", include_oviposit = ", input$oviGroup,")")
        eval(parse(text = string))
      } else if(grepl(pattern = "Pirbright", input$checkGroup[1]) %>% sum == 1){
        Baker_Gene(gene_id(), dataset = "Pirbright")
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
      } else {
        string <- paste0(input$checkGroup[2], "_Gene(\"", gene_id(), "\")")
        eval(parse(text = string))
      }
    }
  })
  output$plot3 <- renderPlot({
    if(length(input$checkGroup)>=3){
      string <- paste0(input$checkGroup[3], "_Gene(\"", gene_id(), "\")")
      eval(parse(text = string))
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
  ## The Help Box 
  output$txt <- renderText({
    ## Defining the datasets to use for expression data
    data_names <- input$checkGroup
      paste0("Datasets: ", paste(data_names, collapse = ", "), "\n", input$gene_id)
  })

  #~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ Orthology output  
}
shinyApp(ui, server)
