% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/convertID.R
\name{convertID}
\alias{convertID}
\title{Convert Gene IDs between databases}
\usage{
convertID(
  phylomap = phylomap,
  mart = "ENSEMBL_MART_ENSEMBL",
  dataset = NULL,
  attributes = c("ensembl_gene_id", "ensembl_peptide_id"),
  filters = "uniprot_gn_id",
  split_uniprot_gene = TRUE
)
}
\arguments{
\item{phylomap}{a phylomap dataset, e.g. \code{phylomapr::Homo_sapiens.PhyloMap},
whose GeneIDs are to be converted.}

\item{mart}{a character string specifying the mart to be used. Users can
obtain available marts using \code{biomartr::getMarts()}.}

\item{dataset}{a character string specifying the dataset within the mart to be used, e.g. \code{dataset = "hsapiens_gene_ensembl"}.}

\item{attributes}{a character vector specifying the attributes that shall be used, e.g. \code{attributes = c("ensembl_gene_id", "ensembl_peptide_id")}.}

\item{filters}{a character vector specifying the filter (query key) for the BioMart query, \verb{e.g. filter = "uniprot_gn_id"}.}

\item{split_uniprot_gene}{a Boolean value specifying whether the uniprot geneIDs (e.g. sp|A0A061ACU2|PIEZ1_CAEEL) should be split (via \verb{stringr::str_split(x, "[|]"))[2])})}
}
\description{
\emph{convertID} takes a phylomap with gene IDs from one database
and converts them gene IDs used in another database. This function wraps around the packages \code{biomartr}, \code{stringr} and \code{dplyr}.
}
\details{
Gene IDs differ between databases used. Through \code{convertID}, users can obtain
the corresponding Gene IDs from a different database, e.g. ENSEMBL.

Note: the lowest (oldest) phylostratum for each gene is chosen.
}
\examples{

# load the first 100 genes from the Homo_sapiens.PhyloMap.
phylomap_example <- head(phylomapr::Homo_sapiens.PhyloMap, 100)

# convert phylomap from uniprot to ensembl gene IDs.
converted_phylomap_example <- convertID(
      phylomap = phylomap_example,
      mart = "ENSEMBL_MART_ENSEMBL",
      dataset = "hsapiens_gene_ensembl",
      filters = "uniprot_gn_id"
)

# Previously
head(phylomap_example)
# Converted
head(converted_phylomap_example)

}
\references{
Lotharukpong JS et al. (2023) (unpublished)

Drost HG, Paszkowski J. Biomartr: genomic data retrieval with R. Bioinformatics (2017) 33(8): 1216-1217. doi:10.1093/bioinformatics/btw821.
}
