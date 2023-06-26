#' Phylomap of Phycomyces blakesleeanus
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on refence protein sequences from Uniprot proteomes.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `ultra-sensitive mode`.
#'
#' @format A tibble with 16,528 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{chr GeneID annotation from UniProt}
#' }
#' @source
#' Manley et al. (2023) _G3 Genes|Genomes|Genetics_
#' \url{https://doi.org/10.1093/g3journal/jkad077}
"Phycomyces_blakesleeanus.PhyloMap"
