# OrthoExpress: *Anopheles gambiae* Orthology & Expression Tool
## Overview

OrthoExpress is a tool developed primarily for use in the Crisanti group, but can be useful for anyone working on *Anopheles gambiae*. Its primary use is to streamline candidate gene searches, combining multiple streams of information from published and unpublished sources into a single tool. When querying a gene, transcript, or protein ID the available information: 

1) Expression datasets from [VectorBase](https://vectorbase.org/vectorbase/app), including [one from the Pirbright Institute](https://vectorbase.org/vectorbase/app/record/dataset/DS_bf500a6707) that only provides raw fastqs. It can easily be updated to include more expression datasets upon request - email requests to d.thorburn@imperial.ac.uk. The Pirbright dataset was analysed using: [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) -> [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic) -> 2-pass [STAR](https://github.com/alexdobin/STAR) methodology for multiple samples -> [HTSeq](https://htseq.readthedocs.io/en/master/) for Gene Expression Quantification -> [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html) for FPKM normalisation.     
2) Orthology and paralogy assignment using a database of 42 insect species, including all annotated mosquito species on [Ensembl Metazoa](https://metazoa.ensembl.org/species.html) version 51 \[Accessed: 10/2021\]. Likely due to the demanding nature of consistent updates to their database, VectorBase's orthology assignment is not as broad as I was expecting. I used [OrthoFinder](https://github.com/davidemms/OrthoFinder) to cluster genes into orthogroups based on an all-versus-all peptide sequence comparison. Gene set expansion can be inferred from high numbers of orthologs in other taxa in the orthology plot. 
3) Gene function information is reported as Gene Ontology (GO) IDs, and can inform on cellular components involved, molecular functions, and biological processes. All GO annotations are taken from Ensembl Metazoa version 51. 

***N.B.*** *Expression and gene function data is currently only available for AgamP4 gene IDs. Use the orthology table to identify putative orthologs in A. gambiae if needed.*

## Installation

This tool is written in R and was developed using R version 4.1.1. Please ensure your R is version 4+ - you can use the R package [installr](https://cran.r-project.org/web/packages/installr/index.html) to update R to the most recent version. Becuase this tool relies on a GUI, you need to run this on your personal computer, and not an HPC. 

### Step 1: Install packages
OrthoExpress relies on several R packages, but this only needs to be done the first time the tool is used. Estimated time to complete installation is 10 minutes - there are a lot of dependencies if you do not have any of the libraries installed. 
```
install.packages(c("data.table", "ggplot2", "remotes", "shiny", "dplyr", "ggstance", "stringr"))
remotes::install_github("coolbutuseless/ggpattern")
```

### Step 2: Access application
OrthoExpress is built on an interactive [Shiny](https://shiny.rstudio.com/) script. To use it, there are two options: 
#### Option 1: Use runGitHub
In an R console, run ```shiny::runGitHub('OrthoExpress', 'dthorburn', ref="main")```. This option requires an internet connection and takes around 30-60 seconds to download temporary files before opening a browser page. 
#### Option 2: Download and run locally
Alternatively, if you want to use this without an internet connection, download/clone the repository. Ensure to update the ```setwd()``` to the appropraite directory containing the ```RData``` files and remove the ```#``` at the start of the line. Then run ```shiny::runApp("/path/to/file/app.r")```. This option will run significantly faster, and only take a few seconds to load. 
