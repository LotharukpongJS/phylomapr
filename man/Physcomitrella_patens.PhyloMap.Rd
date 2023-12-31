% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Physcomitrella_patens.R
\docType{data}
\name{Physcomitrella_patens.PhyloMap}
\alias{Physcomitrella_patens.PhyloMap}
\title{Phylomap of Physcomitrella patens}
\format{
A tibble with 31,519 rows and 2 variables:
\describe{
\item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
\item{GeneID}{chr GeneID annotation from UniProt}
}
}
\source{
Barrera-Redondo et al. (2023) \emph{Genome Biology}
\url{https://doi.org/10.1186/s13059-023-02895-z}
}
\usage{
Physcomitrella_patens.PhyloMap
}
\description{
Gene ages inferred using \href{https://github.com/josuebarrera/GenEra}{GenEra} on reference protein sequences from Uniprot proteomes.
Note: \href{https://github.com/bbuchfink/diamond}{DIAMOND} was run using the \verb{ultra-sensitive mode}.
}
\keyword{datasets}
