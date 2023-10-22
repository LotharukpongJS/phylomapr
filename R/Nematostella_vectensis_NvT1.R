#' Phylomap of Nematostella vectensis NvT1
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference transcript sequences from NvT1 assembly (https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE71086). [Transdecoder](https://github.com/TransDecoder/TransDecoder) -m 50 was performed to obtain protein sequences.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 102,739 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{transcriptID annotation from NvT1 assembly + Transdecoder}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Nematostella_vectensis_NvT1.PhyloMap"
