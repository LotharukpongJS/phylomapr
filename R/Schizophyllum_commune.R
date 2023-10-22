#' Phylomap of Schizophyllum commune
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from JGI proteomes (Schizophyllum commune H4-8 v3.0 (Schco3), JGI project ID: 16355).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 16,319 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{GeneID annotation from JGI}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Schizophyllum_commune.PhyloMap"
