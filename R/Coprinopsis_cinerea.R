#' Phylomap of Coprinopsis cinerea
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference protein sequences from BroadInstitutev3.0 assembly (https://www.broadinstitute.org/fungal-genome-initiative/coprinopsis-cinerea-genome-project).
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 13,393 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{GeneID annotation from BroadInstitutev3.0 assembly}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Coprinopsis_cinerea.PhyloMap"
