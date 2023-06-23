# phylomapr
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
![Visitors](https://api.visitorbadge.io/api/visitors?path=https%3A%2F%2Fgithub.com%2FLotharukpongJS%2Fphylomapr&label=Visitors&countColor=%23263759&style=flat)

`phylomapr` enables quick retrieval of precomputed gene age maps (phylomaps) in R.

## Installation
```r
devtools::install_github("LotharukpongJS/phylomapr")
```

## Use Cases
Load the `phylomap` of _Apostichopus japonicus_ generated using the [GenEra](https://github.com/josuebarrera/GenEra)https://github.com/josuebarrera/GenEra.
```r
Apostichopus_japonicus.PhyloMap
```
```
# A tibble: 30,032 × 2
   Phylostratum GeneID                        
          <dbl> <chr>                         
 1            2 tr|A0A0B6VS88|A0A0B6VS88_STIJA
 2            1 tr|A0A0G2R1N3|A0A0G2R1N3_STIJA
 3            1 tr|A0A0H4BK46|A0A0H4BK46_STIJA
 4            3 tr|A0A0X7YCD7|A0A0X7YCD7_STIJA
 5            1 tr|A0A1B2ZDN7|A0A1B2ZDN7_STIJA
 6            2 tr|A0A1X9J403|A0A1X9J403_STIJA
 7            1 tr|A0A1Z1MZ97|A0A1Z1MZ97_STIJA
 8            1 tr|A0A1Z1MZ98|A0A1Z1MZ98_STIJA
 9           11 tr|A0A2G8JAM8|A0A2G8JAM8_STIJA
10            1 tr|A0A2G8JAN3|A0A2G8JAN3_STIJA
# ℹ 30,022 more rows
# ℹ Use `print(n = ...)` to see more rows
```
Also, get the data description
```r
?Apostichopus_japonicus.PhyloMap
```
```R
#' Phylomap of Apostichopus japonicus
#'
#' Gene ages inferred using [GenEra](https://github.com/josuebarrera/GenEra) on refence protein sequences from Uniprot proteomes.
#' Note: [DIAMOND](https://github.com/bbuchfink/diamond) was run using the `ultra-sensitive mode`.
#'
#' @format A tibble with 30,032 rows and 2 variables:
#' \describe{
#'   \item{Phylostratum}{dbl Phylostratum (or gene age) assignment}
#'   \item{GeneID}{chr GeneID annotation from UniProt}
#' }
#' @source \url{https://genomebiology.biomedcentral.com/articles/10.1186/s13059-023-02895-z}
"Apostichopus_japonicus.PhyloMap"

```
## Citation
Citations are provided in the data description. Just put a `?` in front of the dataset.
