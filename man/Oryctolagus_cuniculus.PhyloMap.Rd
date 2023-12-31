% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Oryctolagus_cuniculus.R
\docType{data}
\name{Oryctolagus_cuniculus.PhyloMap}
\alias{Oryctolagus_cuniculus.PhyloMap}
\title{Phylomap of Oryctolagus cuniculus}
\format{
A tibble with 41,055 rows and 2 variables:
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
Oryctolagus_cuniculus.PhyloMap
}
\description{
Gene ages inferred using \href{https://github.com/josuebarrera/GenEra}{GenEra} on reference protein sequences from ENSEMBL proteomes (OryCun2.0).
Note: \href{https://github.com/bbuchfink/diamond}{DIAMOND} was run using the \verb{sensitive mode}.
}
\keyword{datasets}
