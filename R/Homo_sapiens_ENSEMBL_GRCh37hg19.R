#' Phylomap of Homo sapiens ENSEMBL GRCh37hg19
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from ENSEMBL proteomes (GRCh37(hg19)).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 104,761 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{ProteinID annotation from ENSEMBL}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Homo_sapiens_ENSEMBL_GRCh37hg19.PhyloMap"
