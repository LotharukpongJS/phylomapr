#' Phylomap of Hypsibius dujardini Hduj_transcriptome_v1
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference transcript sequences from Hduj_transcriptome_v1 assembly (https://www.ncbi.nlm.nih.gov/nuccore?linkname=bioproject_nuccore_transcript&from_uid=271450). [Transdecoder](https://github.com/TransDecoder/TransDecoder) -m 50 was performed to obtain protein sequences.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 16,747 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{transcriptID annotation from Hduj_transcriptome_v1 assembly + Transdecoder}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Hypsibius_dujardini.PhyloMap"
