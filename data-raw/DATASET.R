## code to prepare `DATASET` dataset goes here

# usethis::use_data(DATASET, overwrite = TRUE)

######### Barrera-Redondo et al., 2023 #########

# download the Phylostratigraphic Maps of 10 animals, 10 plants and/or 10 fungi.
# [Fungus] from Barrera-Redondo et al., 2023
download.file( url      = "https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-023-02895-z/MediaObjects/13059_2023_2895_MOESM3_ESM.xlsx",
               destfile = "data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx" )

# [Animals] from Barrera-Redondo et al., 2023
download.file( url      = "https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-023-02895-z/MediaObjects/13059_2023_2895_MOESM4_ESM.xlsx",
               destfile = "data-raw/Barrera-Redondo_2023_Maps_animal.xlsx" )

# [Plants] from Barrera-Redondo et al., 2023
download.file( url      = "https://static-content.springer.com/esm/art%3A10.1186%2Fs13059-023-02895-z/MediaObjects/13059_2023_2895_MOESM5_ESM.xlsx",
               destfile = "data-raw/Barrera-Redondo_2023_Maps_plant.xlsx" )


# load package readxl
library(readxl)
library(dplyr)

### Fungus Phylostratigraphic Maps

# Budding yeast
Saccharomyces_cerevisiae_S288C.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "559292_gene_ages")
Saccharomyces_cerevisiae_S288C.PhyloMap <-
  dplyr::select(
    Saccharomyces_cerevisiae_S288C.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Fission yeast
Schizosaccharomyces_pombe.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "4896_gene_ages")
Schizosaccharomyces_pombe.PhyloMap <-
  dplyr::select(
    Schizosaccharomyces_pombe.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Black mould fungus
Aspergillus_niger_CBS_513.88.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "425011_gene_ages")
Aspergillus_niger_CBS_513.88.PhyloMap <-
  dplyr::select(
    Aspergillus_niger_CBS_513.88.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Black morels
Morchella_conica.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "5194_gene_ages")
Morchella_conica.PhyloMap <-
  dplyr::select(
    Morchella_conica.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Cryptococcus neoformans
Cryptococcus_neoformans_var.neoformans_JEC21.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "214684_gene_ages")
Cryptococcus_neoformans_var.neoformans_JEC21.PhyloMap <-
  dplyr::select(
    Cryptococcus_neoformans_var.neoformans_JEC21.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Kwoniella mangroviensis (or K. mangrovensis)
Kwoniella_mangroviensis.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "1296122_gene_ages")
Kwoniella_mangroviensis.PhyloMap <-
  dplyr::select(
    Kwoniella_mangroviensis.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Portobello mushrooms
Agaricus_bisporus.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "936046_gene_ages")
Agaricus_bisporus.PhyloMap <-
  dplyr::select(
    Agaricus_bisporus.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Yellow brain (or goldeb jelly fungus, yellow trembler, witches' butter)
Tremella_mesenterica.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "578456_gene_ages")
Tremella_mesenterica.PhyloMap <-
  dplyr::select(
    Tremella_mesenterica.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Mucor circinelloides
Mucor_circinelloides.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "36080_gene_ages")
Mucor_circinelloides.PhyloMap <-
  dplyr::select(
    Mucor_circinelloides.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Amphibian chytrid fungus
Batrachochytrium_dendrobatidis_JAM81.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_fungus.xlsx", sheet = "684364_gene_ages")
Batrachochytrium_dendrobatidis_JAM81.PhyloMap <-
  dplyr::select(
    Batrachochytrium_dendrobatidis_JAM81.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

### Animal Phylostratigraphic Maps

# Fruit fly
Drosophila_melanogaster.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "7227_gene_ages")
Drosophila_melanogaster.PhyloMap <-
  dplyr::select(
    Drosophila_melanogaster.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Caenorhabditis elegans
Caenorhabditis_elegans.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "6239_gene_ages")
Caenorhabditis_elegans.PhyloMap <-
  dplyr::select(
    Caenorhabditis_elegans.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Hydatid worm
Echinococcus_granulosus.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "6210_gene_ages")
Echinococcus_granulosus.PhyloMap <-
  dplyr::select(
    Echinococcus_granulosus.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Common octopus
Octopus_vulgaris.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "6645_gene_ages")
Octopus_vulgaris.PhyloMap <-
  dplyr::select(
    Octopus_vulgaris.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Capitella teleta
Capitella_teleta.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "283909_gene_ages")
Capitella_teleta.PhyloMap <-
  dplyr::select(
    Capitella_teleta.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

#	House mouse
Mus_musculus.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "10090_gene_ages")
Mus_musculus.PhyloMap <-
  dplyr::select(
    Mus_musculus.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

#	Japanese sea cucumber
Apostichopus_japonicus.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "307972_gene_ages")
Apostichopus_japonicus.PhyloMap <-
  dplyr::select(
    Apostichopus_japonicus.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

#	Starlet sea anemone
Nematostella_vectensis.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "45351_gene_ages")
Nematostella_vectensis.PhyloMap <-
  dplyr::select(
    Nematostella_vectensis.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Trichoplax adhaerens
Trichoplax_adhaerens.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "10228_gene_ages")
Trichoplax_adhaerens.PhyloMap <-
  dplyr::select(
    Trichoplax_adhaerens.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Amphimedon queenslandica
Amphimedon_queenslandica.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_animal.xlsx", sheet = "400682_gene_ages")
Amphimedon_queenslandica.PhyloMap <-
  dplyr::select(
    Amphimedon_queenslandica.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

### Plant Phylostratigraphic Maps

# Thale cress
Arabidopsis_thaliana.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "3702_gene_ages")
Arabidopsis_thaliana.PhyloMap <-
  dplyr::select(
    Arabidopsis_thaliana.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Soybean
Glycine_max.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "3847_gene_ages")
Glycine_max.PhyloMap <-
  dplyr::select(
    Glycine_max.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Tomato
Solanum_lycopersicum.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "4081_gene_ages")
Solanum_lycopersicum.PhyloMap <-
  dplyr::select(
    Solanum_lycopersicum.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Rice
Oryza_sativa.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "39947_gene_ages")
Oryza_sativa.PhyloMap <-
  dplyr::select(
    Oryza_sativa.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Flat-leaved vanilla
Vanilla_planifolia.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "51239_gene_ages")
Vanilla_planifolia.PhyloMap <-
  dplyr::select(
    Vanilla_planifolia.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Musa acuminata
Musa_acuminata.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "214687_gene_ages")
Musa_acuminata.PhyloMap <-
  dplyr::select(
    Musa_acuminata.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# White spruce
Picea_glauca.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "3330_gene_ages")
Picea_glauca.PhyloMap <-
  dplyr::select(
    Picea_glauca.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Selaginella moellendorffii
Selaginella_moellendorffii.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "88036_gene_ages")
Selaginella_moellendorffii.PhyloMap <-
  dplyr::select(
    Selaginella_moellendorffii.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Spreading earthmoss
Physcomitrella_patens.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "3218_gene_ages")
Physcomitrella_patens.PhyloMap <-
  dplyr::select(
    Physcomitrella_patens.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

# Marchantia polymorpha
Marchantia_polymorpha.data <-
  read_excel("data-raw/Barrera-Redondo_2023_Maps_plant.xlsx", sheet = "3197_gene_ages")
Marchantia_polymorpha.PhyloMap <-
  dplyr::select(
    Marchantia_polymorpha.data,
    Phylostratum = rank,
    GeneID = `#gene`
  ) %>%
  dplyr::mutate(Phylostratum = as.numeric(Phylostratum))

######### Manley et al., 2023 #########

# download the Phylostratigraphic Maps from Manley et al., 2023
# Rhizophagus irregularis
download.file( url      = "https://zenodo.org/record/7713976/files/Rhizophagus_irregularis_DAOM197198_1432141_phyloranks.tsv",
               destfile = "data-raw/Rhizophagus_irregularis_DAOM197198_1432141_phyloranks.tsv")
# Dissophora decumbens
download.file( url      = "https://zenodo.org/record/7713976/files/Disdec1_101101_phyloranks.tsv",
               destfile = "data-raw/Disdec1_101101_phyloranks.tsv")
# Geosiphon pyriformis
download.file( url      = "https://zenodo.org/record/7713976/files/Geopyr1_50956_phyloranks.tsv",
               destfile = "data-raw/Geopyr1_50956_phyloranks.tsv")
# Gigaspora margarita
download.file( url      = "https://zenodo.org/record/7713976/files/Gigmar1_4874_phyloranks.tsv",
               destfile = "data-raw/Gigmar1_4874_phyloranks.tsv")
# Mortierella elongata
download.file( url      = "https://zenodo.org/record/7713976/files/Morel2_1314771_phyloranks.tsv",
               destfile = "data-raw/Morel2_1314771_phyloranks.tsv")
# Phycomyces blakesleeanus
download.file( url      = "https://zenodo.org/record/7713976/files/Phybl2_4837_phyloranks.tsv",
               destfile = "data-raw/Phybl2_4837_phyloranks.tsv")
# Radiomyces spectabilis
download.file( url      = "https://zenodo.org/record/7713976/files/Radspe1_64574_phyloranks.tsv",
               destfile = "data-raw/Radspe1_64574_phyloranks.tsv")

# load package readxl
library(readr)

### Phylostratigraphic Maps
# Rhizophagus irregularis
Rhizophagus_irregularis.data <-readr::read_tsv("data-raw/Rhizophagus_irregularis_DAOM197198_1432141_phyloranks.tsv")
Rhizophagus_irregularis.PhyloMap <-
  dplyr::select(
    Rhizophagus_irregularis.data,
    Phylostratum = PS,
    GeneID
  )

# Dissophora decumbens
Dissophora_decumbens.data <-readr::read_tsv("data-raw/Disdec1_101101_phyloranks.tsv")
Dissophora_decumbens.PhyloMap <-
  dplyr::select(
    Dissophora_decumbens.data,
    Phylostratum = rank,
    GeneID = `#gene`
  )

# Geosiphon pyriformis
Geosiphon_pyriformis.data <-readr::read_tsv("data-raw/Geopyr1_50956_phyloranks.tsv")
Geosiphon_pyriformis.PhyloMap <-
  dplyr::select(
    Geosiphon_pyriformis.data,
    Phylostratum = rank,
    GeneID = `#gene`
  )

# Gigaspora margarita
Gigaspora_margarita.data <-readr::read_tsv("data-raw/Gigmar1_4874_phyloranks.tsv")
Gigaspora_margarita.PhyloMap <-
  dplyr::select(
    Gigaspora_margarita.data,
    Phylostratum = rank,
    GeneID = `#gene`
  )

# Mortierella elongata
Mortierella_elongata.data <-readr::read_tsv("data-raw/Morel2_1314771_phyloranks.tsv")
Mortierella_elongata.PhyloMap <-
  dplyr::select(
    Mortierella_elongata.data,
    Phylostratum = rank,
    GeneID = V1
  )

# Phycomyces blakesleeanus
Phycomyces_blakesleeanus.data <-readr::read_tsv("data-raw/Phybl2_4837_phyloranks.tsv")
Phycomyces_blakesleeanus.PhyloMap <-
  dplyr::select(
    Phycomyces_blakesleeanus.data,
    Phylostratum = rank,
    GeneID
  )

# Radiomyces spectabilis
Radiomyces_spectabilis.data <-readr::read_tsv("data-raw/Radspe1_64574_phyloranks.tsv")
Radiomyces_spectabilis.PhyloMap <-
  dplyr::select(
    Radiomyces_spectabilis.data,
    Phylostratum = rank,
    GeneID
  )

######### Homo sapiens GenEra test #########

Homo_sapiens.data <-readr::read_tsv("data-raw/9606_gene_ages.tsv")
Homo_sapiens.PhyloMap <-
  dplyr::select(
    Homo_sapiens.data,
    Phylostratum = rank,
    GeneID = `#gene`
    )

######### Strongylocentrotus purpuratus GenEra test #########

Strongylocentrotus_purpuratus.data <-readr::read_tsv("data-raw/7668_gene_ages.tsv")
Strongylocentrotus_purpuratus.PhyloMap <-
  dplyr::select(
    Strongylocentrotus_purpuratus.data,
    Phylostratum = rank,
    GeneID = `#gene`
    )

######### Save phylomaps #########

usethis::use_data(Agaricus_bisporus.PhyloMap, overwrite = TRUE)
usethis::use_data(Amphimedon_queenslandica.PhyloMap, overwrite = TRUE)
usethis::use_data(Apostichopus_japonicus.PhyloMap, overwrite = TRUE)
usethis::use_data(Arabidopsis_thaliana.PhyloMap, overwrite = TRUE)
usethis::use_data(Aspergillus_niger_CBS_513.88.PhyloMap, overwrite = TRUE)
usethis::use_data(Batrachochytrium_dendrobatidis_JAM81.PhyloMap, overwrite = TRUE)
usethis::use_data(Caenorhabditis_elegans.PhyloMap, overwrite = TRUE)
usethis::use_data(Capitella_teleta.PhyloMap, overwrite = TRUE)
usethis::use_data(Cryptococcus_neoformans_var.neoformans_JEC21.PhyloMap, overwrite = TRUE)
usethis::use_data(Drosophila_melanogaster.PhyloMap, overwrite = TRUE)
usethis::use_data(Echinococcus_granulosus.PhyloMap, overwrite = TRUE)
usethis::use_data(Glycine_max.PhyloMap, overwrite = TRUE)
usethis::use_data(Kwoniella_mangroviensis.PhyloMap, overwrite = TRUE)
usethis::use_data(Marchantia_polymorpha.PhyloMap, overwrite = TRUE)
usethis::use_data(Morchella_conica.PhyloMap, overwrite = TRUE)
usethis::use_data(Mucor_circinelloides.PhyloMap, overwrite = TRUE)
usethis::use_data(Mus_musculus.PhyloMap, overwrite = TRUE)
usethis::use_data(Musa_acuminata.PhyloMap, overwrite = TRUE)
usethis::use_data(Nematostella_vectensis.PhyloMap, overwrite = TRUE)
usethis::use_data(Octopus_vulgaris.PhyloMap, overwrite = TRUE)
usethis::use_data(Oryza_sativa.PhyloMap, overwrite = TRUE)
usethis::use_data(Physcomitrella_patens.PhyloMap, overwrite = TRUE)
usethis::use_data(Picea_glauca.PhyloMap, overwrite = TRUE)
usethis::use_data(Saccharomyces_cerevisiae_S288C.PhyloMap, overwrite = TRUE)
usethis::use_data(Schizosaccharomyces_pombe.PhyloMap, overwrite = TRUE)
usethis::use_data(Selaginella_moellendorffii.PhyloMap, overwrite = TRUE)
usethis::use_data(Solanum_lycopersicum.PhyloMap, overwrite = TRUE)
usethis::use_data(Tremella_mesenterica.PhyloMap, overwrite = TRUE)
usethis::use_data(Trichoplax_adhaerens.PhyloMap, overwrite = TRUE)
usethis::use_data(Vanilla_planifolia.PhyloMap, overwrite = TRUE)

usethis::use_data(Rhizophagus_irregularis.PhyloMap, overwrite = TRUE)
usethis::use_data(Dissophora_decumbens.PhyloMap, overwrite = TRUE)
usethis::use_data(Geosiphon_pyriformis.PhyloMap, overwrite = TRUE)
usethis::use_data(Gigaspora_margarita.PhyloMap, overwrite = TRUE)
usethis::use_data(Mortierella_elongata.PhyloMap, overwrite = TRUE)
usethis::use_data(Phycomyces_blakesleeanus.PhyloMap, overwrite = TRUE)
usethis::use_data(Radiomyces_spectabilis.PhyloMap, overwrite = TRUE)

usethis::use_data(Homo_sapiens.PhyloMap, overwrite = TRUE)
usethis::use_data(Strongylocentrotus_purpuratus.PhyloMap, overwrite = TRUE)
