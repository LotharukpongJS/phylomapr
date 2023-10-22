#' Phylomap of Gallus gallus
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from ENSEMBL proteomes (Galgal4).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 16,354 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{ProteinID annotation from ENSEMBL}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Gallus_gallus.PhyloMap"
