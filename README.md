# OrthoExpress: *Anopheles gambiae* Orthology & Expression Tool
## Overview

OrthoExpress is a tool developed primarily for use in the Crisanti group. The tool provides two channels of information: 

1) Expression datasets from [VectorBase](https://vectorbase.org/vectorbase/app), including [one from the Pirbright Institute](https://vectorbase.org/vectorbase/app/record/dataset/DS_bf500a6707) that only provides raw fastqs, into a single easy to use tool. It can easily be updated to include more expression dataset upon request - email requests to d.thorburn@imperial.ac.uk. The Pirbright dataset was analysed using: [FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/) -> [Trimmomatic](http://www.usadellab.org/cms/?page=trimmomatic) -> 2-pass [STAR](https://github.com/alexdobin/STAR) methodology for multiple samples -> [HTSeq](https://htseq.readthedocs.io/en/master/) for Gene Expression Quantification -> [DESeq2](https://bioconductor.org/packages/release/bioc/html/DESeq2.html) for FPKM normalisation. 
2) ***Coming soon*** - Orthology and paralogy assignment within [Endopterygota](https://en.wikipedia.org/wiki/Endopterygota). Likely due to the demanding nature of consistent updates to their database, VectorBase's orthology assignment is not as broad as I was expecting. So I have used [OrthoFinder](https://github.com/davidemms/OrthoFinder) to find all known orthologs among 26 insect species within the Endopterygota taxonomic group. The species represent the best quality genomes with mtDNA assembled - this was necessary to build the species tree. The ML species  trees was generated using [RAxML](https://cme.h-its.org/exelixis/web/software/raxml/), and support was estimated from 1000 bootstraps.

## Installation

The tools is based upon R scripts, and developed using R version 4.1.1. Please ensure your R is up to date - you can use the R package [installr](https://cran.r-project.org/web/packages/installr/index.html) to update R to the most recent version. Becuase this tool relies on a GUI, you need to run this on your personal computer, and not an HPC. 

### Step 1: Install packages
OrthoExpression relies on several R packages, but this only needs to be done the first time the tool is used.
```
install.packages(c("data.table", "ggplot2", "remotes", "shiny", "dplyr"))
remotes::install_github("coolbutuseless/ggpattern")
```

### Step 2: Access application
OrthoExpression is built on an interactive [Shiny](https://shiny.rstudio.com/) script. To use it, there are two options: 
#### Option 1: Use runGitHub
In an R console, run ```shiny::runGitHub('OrthoExpress', 'dthorburn', ref="main")```. This option requires an internet connection. 
#### Option 2: Download and run locally
Alternatively, if you want to use this without an internet connection, download/clone the repository. Ensure to update the ```setwd()``` to the appropraite directory containing the file ```All_Expression_Dat_XXXXXX.RData``` and remove the ```#``` at the start of the line. Then run ```shiny::runApp("/path/to/file/app.r")```. 
