#' Phylomap of Strongylocentrotus purpuratus
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from NCBI protein coding genes (https://www.ncbi.nlm.nih.gov/datasets/gene/taxon/7668/?gene-type=Protein-coding).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `ultra-sensitive mode`.
#'
#' @format A tibble with 38,475 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{proteinID annotation from NCBI}
#' }
#' @source
#' Bermejo (2023) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Strongylocentrotus_purpuratus.PhyloMap"
