#' Phylomap of Strongylocentrotus purpuratus WHL22
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference transcript sequences from WHL22 assembly (https://www.ncbi.nlm.nih.gov/nuccore/1583097974). [Transdecoder](https://github.com/TransDecoder/TransDecoder) -m 50 was performed to obtain protein sequences.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 35,907 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{transcriptID annotation from WHL22 assembly + Transdecoder}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Strongylocentrotus_purpuratus_WHL22.PhyloMap"
