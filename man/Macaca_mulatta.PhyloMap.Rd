% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Macaca_mulatta.R
\docType{data}
\name{Macaca_mulatta.PhyloMap}
\alias{Macaca_mulatta.PhyloMap}
\title{Phylomap of Macaca mulatta}
\format{
A tibble with 36,384 rows and 2 variables:
\describe{
\item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
\item{GeneID}{ProteinID annotation from ENSEMBL}
}
}
\source{
Kalábová (2024) \emph{Unpublished}
\url{https://github.com/LotharukpongJS/phylomapr}
}
\usage{
Macaca_mulatta.PhyloMap
}
\description{
Gene ages inferred using \href{https://github.com/josuebarrera/GenEra}{GenEra} on reference protein sequences from ENSEMBL proteomes (MMUL_1).
Note: \href{https://github.com/bbuchfink/diamond}{DIAMOND} was run using the \verb{sensitive mode}.
}
\keyword{datasets}
