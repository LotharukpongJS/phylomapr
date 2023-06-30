#' Phylomap of Amphimedon queenslandica
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on refence protein sequences from Uniprot proteomes.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `ultra-sensitive mode`.
#'
#' @format A tibble with 43,437 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{chr GeneID annotation from UniProt}
#' }
#' @source
#' Barrera-Redondo et al. (2023) _Genome Biology_
#' \url{https://doi.org/10.1186/s13059-023-02895-z}
"Amphimedon_queenslandica.PhyloMap"
