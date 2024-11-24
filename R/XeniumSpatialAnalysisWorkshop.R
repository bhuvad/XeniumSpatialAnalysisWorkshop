#' Sub-sampled 10x Xenium breast cancer (IDC) spatial transcriptomics dataset
#'
#' A 10x Xenium spatial transcriptomics dataset containing a sub-region of a intra-ductal carcinoma (IDC) breast cancer sample. The data contains pathology annotations. The full dataset is available through the SubcellularSpatialData R/Bioconductor package.
#'
#' @format A SpatialExperiment object.
#' @docType data
#' @references Bhuva DD, Tan CW, Salim A, Marceaux C, Pickering MA, Chen J, Kharbanda M, Jin X, Liu N, Feher K, Putri G. Library size confounds biology in spatial transcriptomics data. Genome Biology. 2024 Apr 18;25(1):99.
#' 
#'  Bhuva DD, Tan CW, Marceaux C, Pickering M, Salim A, Chen J, Kharbanda M, Jin X, Liu N, Feher K, et al. Library size confounds biology in spatial transcriptomics data. 2024. Zenodo. https://doi.org/10.5281/zenodo.7959786.
#' 
#'  Bhuva DD: SubcellularSpatialData: annotated spatial transcriptomics datasets from 10x Xenium, NanoString CosMx and BGI STOmics. Bioconductor. 2024 https://doi.org/10.18129/B9.bioc.SubcellularSpatialData.
#' 
#'  Bhuva DD. Library size confounds biology in spatial transcriptomics. 2024. Zenodo. https://doi.org/10.5281/zenodo.10946961.
#' 
"idc"

#' Pseudo-bulked single-cell breast cancer reference dataset
#'
#' A pseudo-bulked single-cell RNA-seq breast cancer dataset from the study by Wu et al., Nat Genetics, 2021. The original dataset has been subsetted to the genes present in the 10x Xenium dataset.
#'
#' @format A SingleCellExperiment object.
#' @docType data
# 
#' @references Wu SZ, Al-Eryani G, Roden DL, Junankar S, Harvey K, Andersson A, Thennavan A, Wang C, Torpy JR, Bartonicek N, Wang T. A single-cell and spatially resolved atlas of human breast cancers. Nature genetics. 2021 Sep;53(9):1334-47. https://www.weizmann.ac.il/sites/3CA/breast
#' 
"ref_wu"

.myDataEnv <- new.env(parent = emptyenv()) # not exported

.data_internal <- function(dataset) {
  if (!exists(dataset, envir = .myDataEnv)) {
    utils::data(list = c(dataset), envir = .myDataEnv)
  }
}
