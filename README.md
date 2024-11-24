# Introduction to imaging-based spatial transcriptomics analysis

Biological systems are complex and heterogeneous, involving a diverse suite of cells with unique functions, interacting and communicating to produce complex behaviour at the tissue-level. Understanding such complexity requires detailed measurements that are now made possible through emerging sub-cellular resolution spatial molecular technologies. These technologies allow us to measure the activity of 100s of genes across >100,000 cells from a biological tissue. In the context of cancer, these technologies allow us to study how cancer cells interact with their environment to survive. To unleash the power of these technologies, we need appropriate bioinformatics analysis to generate biological insight.

## Overview

In this workshop, we will analyse a sub-sampled spatial transcriptomics dataset to demonstrate quality control, normalisation, cell typing, spatial domain identification, and domain-specific functional analysis. We will use spatially aware computational methods to perform analyses where such methods are available. At the end of the workshop, attendees will be equipped with the computational tools and data structures used to analyse spatial transcriptomics datasets. They will also be able to analyse their own spatial transcriptomics datasets and decipher complex behaviour in their biological systems of interest.

## Pre-requisites 

This workshop will be relevant to anyone interested in analysing data from emerging high-resolution imaging-based spatial molecular technologies such as 10x Xenium, NanoString CosMx, and Vizgen MERSCOPE.

Attendees will require a laptop with internet access and should have familiarity with R, some familiarity with Bioconductor. Some basic knowledge on spatial transcriptomics technologies and the standard steps needed to gain insight from the data they generate is desirable.

## Time outline

| Activity                                                        | Time |
|-----------------------------------------------------------------|------|
| Introduction & setup                                            | 30m  |
| Part 1. Preprocess spatial `omics data (QC and Normalisation)   | 45m  |
| Part 2. Infer spatial biology (cell typing, spatial domains)    | 45m  |
| Part 3. Interpret spatial biology (DE, GSEA)                    | 45m  |
| Q & A                                                           | 15m  |


## Workshop goals and objectives

### Learning goals

 - Preprocess spatial transcriptomics datasets.
 - Infer cell types, spatial domains, and biological function from spatial transcriptomics datasets.
 - Understand the importance of visualisation in bioinformatics and computational biology.

### Learning objectives

 - Exectue a standard spatial transcritpomics analysis pipeline.
 - Interpret spatial biology from spatial transriptomics datasets.

## Workshop package installation 

### Guide

This is necessary in order to reproduce the code shown in the workshop. 
The workshop is designed for R `4.4.1` and Bioconductor `3.20`, and can be installed using one of the two ways below.

### Via Docker image

If you're familiar with [Docker](https://docs.docker.com/get-docker/) you could use the Docker image which has all the software pre-configured to the correct versions.

```
docker run -e PASSWORD=password -p 8787:8787 bhuvad/xeniumspatialanalysisworkshop:latest
```

Once running, navigate to <http://localhost:8787/> and then login with
`Username:rstudio` and `Password:password`.

You should see the Rmarkdown file with all the workshop code which you can run.

### Via GitHub

Alternatively, you could install the workshop using the commands below in R `>4.4.1` and BioConductor `>3.20`.

```
install.packages('remotes')

# Install workshop package
remotes::install_github("bhuvad/XeniumSpatialAnalysisWorkshop", build_vignettes = TRUE)

# To view vignettes
library(XeniumSpatialAnalysisWorkshop)
browseVignettes("XeniumSpatialAnalysisWorkshop")
```
