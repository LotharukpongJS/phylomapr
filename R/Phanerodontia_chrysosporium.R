#' Phylomap of Phanerodontia chrysosporium
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from JGI proteomes (Phanerochaete chrysosporium RP-78 v2.2).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 13,602 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{GeneID annotation from JGI}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Phanerodontia_chrysosporium.PhyloMap"
