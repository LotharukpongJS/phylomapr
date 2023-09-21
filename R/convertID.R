#' @title Convert Gene IDs between databases
#' @description \emph{convertID} takes a phylomap with gene IDs from one database
#'  and converts them gene IDs used in another database. This function wraps around the packages `biomartr`, `stringr` and `dplyr`.
#' @param phylomap a phylomap dataset, e.g. `phylomapr::Homo_sapiens.PhyloMap`,
#' whose GeneIDs are to be converted.
#' @param mart a character string specifying the mart to be used. Users can
#' obtain available marts using `biomartr::getMarts()`.
#' @param dataset a character string specifying the dataset within the mart to be used, e.g. `dataset = "hsapiens_gene_ensembl"`.
#' @param attributes a character vector specifying the attributes that shall be used, e.g. `attributes = c("ensembl_gene_id", "ensembl_peptide_id")`.
#' @param filters a character vector specifying the filter (query key) for the BioMart query, `e.g. filter = "uniprot_gn_id"`.
#' @importFrom rlang `:=`
#' @examples
#'
#' # load the first 100 genes from the Homo_sapiens.PhyloMap.
#' phylomap_example <- head(phylomapr::Homo_sapiens.PhyloMap, 100)
#'
#' # convert phylomap from uniprot to ensembl gene IDs.
#' converted_phylomap_example <- convertID(
#'       phylomap = phylomap_example,
#'       mart = "ENSEMBL_MART_ENSEMBL",
#'       dataset = "hsapiens_gene_ensembl",
#'       filters = "uniprot_gn_id"
#' )
#'
#' # Previously
#' head(phylomap_example)
#' # Converted
#' head(converted_phylomap_example)
#'
#' @details
#' Gene IDs differ between databases used. Through `convertID`, users can obtain
#' the corresponding Gene IDs from a different database, e.g. ENSEMBL.
#'
#' Note: the lowest (oldest) phylostratum for each gene is chosen.
#'
#' @references
#'
#' Lotharukpong JS et al. (2023) (unpublished)
#'
#' Drost HG, Paszkowski J. Biomartr: genomic data retrieval with R. Bioinformatics (2017) 33(8): 1216-1217. doi:10.1093/bioinformatics/btw821.
#'
#' @export

convertID <- function(
    phylomap = phylomap,
    mart = "ENSEMBL_MART_ENSEMBL",
    dataset = NULL,
    attributes = c("ensembl_gene_id", "ensembl_peptide_id"),
    filters = "uniprot_gn_id"
){

  message("Starting Gene ID conversion...")
  if(is.null(phylomap))
    stop("Enter a phylomap, e.g. phylomapr::Homo_sapiens.PhyloMap", call. = FALSE)
  if(is.null(dataset))
    stop("Enter a dataset associated with the phylomap species, e.g. hsapiens_gene_ensembl", call. = FALSE)
  if(colnames(phylomap[1]) != "Phylostratum")
    stop("The first column in the phylomap must be named Phylostratum", call. = FALSE)
  if(colnames(phylomap[2]) != "GeneID")
    stop("The second column in the phylomap must be named GeneID", call. = FALSE)

  # Get a character vector containing all the gene names for input to biomartr::biomart(...)

  gene_input <-
    base::unlist(
      base::lapply(phylomap$GeneID, function(x)
        base::unlist(stringr::str_split(x, "[|]"))[2]))
  # Map UniProtKB IDs to ENSEMBL gene ids
  # genes were retrieved using biomartr::getGenome()
  # marts were selected with biomartr::getMarts()
  # datasets were selected with biomartr::getDatasets()
  # attributes were selected with biomartr::getAttributes()
  # filters: specify what ID type was stored in the fasta file retrieved with biomartr::getGenome()

  result_BM <-
    biomartr::biomart(
      genes = gene_input,
      mart = mart,
      dataset = dataset,
      attributes = attributes,
      filters = filters
    )

  converted_phylomap <-
    dplyr::mutate(phylomap, {{filters}} := gene_input)

  # join phylomap with biomartr ENSEMBL ids
  converted_phylomap_joined <-
    dplyr::inner_join(converted_phylomap, result_BM, by = filters)

  # select the lowest (= oldest) Phylostratum value for each ensembl_gene_id
  converted_phylomap_joined_filtered <-
    dplyr::group_by_at(converted_phylomap_joined,
                       dplyr::vars(attributes[1])) |>
    dplyr::summarise(Phylostratum = min(Phylostratum))

  names(converted_phylomap_joined_filtered)[1] <- "GeneID"

  # format map
  res_phylomap <- converted_phylomap_joined_filtered[c(2,1)]

  return(res_phylomap)
}
