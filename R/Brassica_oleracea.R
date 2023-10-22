#' Phylomap of Brassica oleracea
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from brassicadb (Braol_JZS_V1.1).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 45,758 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{GeneID annotation from brassicadb}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Brassica_oleracea.PhyloMap"
