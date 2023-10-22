#' Phylomap of Platynereis dumerilii Pdum_transcriptome_v1
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on reference transcript sequences from Pdum_transcriptome_v1 assembly (https://www.ncbi.nlm.nih.gov/nuccore?linkname=bioproject_nuccore_transcript&from_uid=271451). [Transdecoder](https://github.com/TransDecoder/TransDecoder) -m 50 was performed to obtain protein sequences.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `sensitive mode`.
#'
#' @format A tibble with 12,438 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{transcriptID annotation from Pdum_transcriptome_v1 assembly + Transdecoder}
#' }
#' @source
#' Kalábová (2024) _Unpublished_
#' \url{https://github.com/LotharukpongJS/phylomapr}
"Platynereis_dumerilii.PhyloMap"
