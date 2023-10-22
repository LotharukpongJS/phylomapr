#' Phylomap of Brassica rapa
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from brassicadb (Brara_Chiifu_V3.0).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 46,250 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{GeneID annotation from brassicadb}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Brassica_rapa.PhyloMap"
