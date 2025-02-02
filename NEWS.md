# AusTraits v6.0.0

This is a major release of the AusTraits database.

- austraits-6.0.0.zip: contains the compiled dataset and details of
  structure
- austraits-6.0.0.rds: contains a version of the dataset for direct
  loading in R
- source code v6.0.0.zip: contains the source materials used to build
  the compiled dataset

For details on access, structure, and usage please visit
<https://doi.org/10.5281/zenodo.3568417>.

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v6.0.0> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v5.0.0...v6.0.0>

Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset_id |  taxa | locations | traits | records |
|:--------|-----------:|------:|----------:|-------:|--------:|
| 5.0.0   |        363 | 33402 |      4894 |    494 | 1813897 |
| 6.0.0   |        364 | 33494 |      4894 |    497 | 1726024 |

This is a major release of AusTraits as it involves removal of some old error-prone data. Additionally, we've added new traits and metadata.

- **2 new sources added to the dataset**: NHNSW_2024, Stephens_2024
  - Stephen_2024: additional trait data from EUCLID
  - NHNSW_2024: 597 taxa had previously been missing from the PlantNet datasets

- **1 sources removed**– most replaced by corrected or updated sources
  above: WAH_2016

- **15095 new or updated records for 35 existing traits**
  - Adding more specific references:
    - Add species-level authorship to all flora data, as designated in the floras.
    - For `Wenk_2022` and `Wenk_2023`, the two “Complete Traits” datasets, add in the references for the manually looked-up taxa.

  - Fixing errors, removing outdated data
    - Mainly removing duplicate and outdated trait data from floras that were scraped once when AusTraits was first being developed and were scraped again in 2022/2023. This removes trait values that were duplicated between the two scrapings, with the newer values being preferentially retained. All non-duplicate values were manually checked and removed if the original values was determined to be an error.

- **4705 new records for 3 new traits:** bud_length, bud_width,
  buds_per_inflorescence

Details on new studies:

| dataset_id    | taxa | locations | traits | records |
|:--------------|-----:|----------:|-------:|--------:|
| NHNSW_2024    |  597 |         1 |     33 |    6371 |
| Stephens_2024 |  981 |         1 |      9 |   13429 |

# AusTraits v5.0.0

This is a major release of the AusTraits database.

- austraits-5.0.0.zip: contains the compiled dataset and details of
  structure
- austraits-5.0.0.rds: contains a version of the dataset for direct
  loading in R
- source code v5.0.0.zip: contains the source materials used to build
  the compiled dataset

For details on access, structure, and usage please visit
<https://doi.org/10.5281/zenodo.3568417>.

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v5.0.0> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v4.2.0...v5.0.0>


Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset_id |  taxa | locations | traits | records |
|:--------|-----------:|------:|----------:|-------:|--------:|
| 4.2.0   |        363 | 34262 |      5176 |    494 | 1848570 |
| 5.0.0   |        363 | 33402 |      4894 |    494 | 1813897 |

This release contains:


- **34673 records removed from the dataset**: these datapoints were previously excluded (e.g. because they are exotics or poor quality), but that were inadvertently added into v 4.2.0. Now removed again. - restructruign of columns, as noted below.

This is the first AusTraits release to be compiled using the `{traits.build}` R package, available at https://github.com/traitecoevo/traits.build. The workflow is a refined version of the R-scripted pipeline previously used to compile AusTraits and the output structure has not changed, other than on-going minor fine-tuning, as detailed below.

**Taxonomy**: New AusTraits-specific functions relating to taxonomy have been written that utilise the package `{APCalign}`. One new function, `build_align_taxon_names` uses the function `APCalign::align_taxa()` to standardise syntax, correct typos, and ensure taxon names are aligned with some name on the APC or APNI lists. The second function, `build_update_taxon_list` uses the function APCalign:update_taxonomy to build a new `taxon_list.csv` file for the config/ folder. This file is then used by `traits.build::dataset_update_taxonomy` to update names to their currently accepted taxon name, when possible.

Edits were made to many dataset metadata files to align with these changes.

**Changes to table structure**:

- `method_id` was added, so that when the same trait was measured using multiple methods, these could be distinguished between
- the context identifiers were renamed to `method_context_id`, `temporal_context_id`, `entity_context_id`, `plot_context_id`, `treatment_context_id` to be more explicit
- `austraits_curators` became `dataset_curators`
- added `repeat_measurements_id` for trait measurements that are response curves, both to unify the repeated measurements that comprise a single "measurement" and also to capture the order of the measurements

No datasets have been added for this release. However, some metadata file changes exist, in particular to metadata[["taxonomic_updates"]], including removing duplicate taxonomic_updates or unneeded taxonomic updates and continued standardisation of taxonomic updates. All original_names in the taxonomic_updates tibble are now aligned to a specified taxon_name - either an informal name assigned through metadata[["taxonomic_updates"]] or a match to a name on the taxon_list.

# AusTraits v4.2.0

This is a minor release of the AusTraits database.

- austraits-4.2.0.zip: contains the compiled dataset and details of the
  structure
- austraits-4.2.0.rds: contains a version of the dataset for direct
  loading in R
- source code v4.2.0.zip: contains the source materials used to build
  the compiled dataset

For details on access, structure and usage, please visit:
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at:
<https://github.com/traitecoevo/austraits.build/releases/tag/v4.2.0> 

A full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v4.1.0…v4.2.0>

Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset_id |  taxa | locations | traits | records |
|:--------|-----------:|------:|----------:|-------:|--------:|
| 4.1.0   |        296 | 34017 |      4904 |    464 | 1253250 |
| 4.2.0   |        363 | 34356 |      5176 |    494 | 1849372 |

This release contains:

- **67 new sources added to the dataset**: ABRS_2023, Auld_2000,
  Bradshaw_2022, Britton_1994, Brodribb_2000, Burrows_2008,
  Burrows_2020, Canham_2009, Canham_2023, Collette_2021, Cowling_1987,
  Crowley_2007, deCampos_2013, Draper_2023, Eamus_2000,
  eFLOWER_Dun_2022, Ellsworth_2015, Enright_2014, Gosper_2022,
  Grigg_2008, Groves_1986, Harvey_2017, He_2011, Kocacinar_2003,
  Kubiak_2009, Lawes_2014, Mesaglio_2022, Mitchell_2008, Morgan_2021,
  Nano_2011, NHNSW_2023, NTH_2023, Pate_1990, Pate_1998, Pfautsch_2016,
  Pirralho_2014, Prior_2022, Purdie_1976, RBGV_2023, Richards_2021,
  Rumman_2018, RussellSmith_2012, SAH_2023, Santini_2012, Santini_2013,
  Santini_2016, Searson_2004, Simpson_2021, SinghRamesh_2019,
  SinghRamesh_2023, SmithMartin_2020, Stephens_2023, Sweedman_2006,
  Togashi_2015, Tolsma_2007, Tsakalos_2020, Tsakalos_2022,
  vanderMoezel_1987, WAH_2023_1, WAH_2023_2, Wenk_2023, Wenk_2023_2,
  Wilson_2004, Witkowski_1991, Wooller_2002, Yang_2023, Yunusa_2010

- **56 new contributors:** Alasdair Grigg, Arn Tolsma, Arun Singh
  Ramesh, Barbara Wilson, Bradley Simpson, Caroline Canham, Catherine
  Nano, Chris Smith-Martin, David Merritt, David S. Ellsworth, Delny L.
  Britton, Dun Lily, E. T. F. Witkowski, Emrys Leitch, Ferit
  Kocacinar, G. Crowley, Henrique Togashi, Holly Bradshaw, Irene
  Martín-Forés, Isa Yunusa, James Tsakalos, Jeannine Richards, Jenna
  Draper, Jeremy Russell-Smith, John Pate, Judith Harvey, Julia Cooke,
  Justin Collette, Kimberley Simpson, Lestrange Catherine, Lily Dun,
  Luke Sweedman, Mariana de Campos, Marília Pirralho, Matthew J.
  Searson, Nadia S. Santini, Neal Enright, Neil Burrows, Nele
  Schmitz, P. J. Kubiak, Patrick J. Mitchell, Paul van der Moezel, R. M.
  Cowling, Rhys Morgan, Richard Groves, Rizwana Rumman, Roger Fryer,
  Rosemary Purdie, Russell Barrett, Sam Wood, Sebastian Pfautsch,
  Setterfield Samantha, Sophie Yang, Susan Wooller, Thomas Mesaglio,
  Tianhua He

- **0 sources removed**– most replaced by corrected or updated sources
  above:

- **531367 new or updated records for 212 existing traits**

- **64985 new records for 42 new traits:**
  fire_time_from_fire_to_50_percent_flowering,
  fire_time_from_fire_to_50_percent_fruiting,
  fire_time_from_fire_to_flowering,
  fire_time_from_fire_to_flowering_decline,
  fire_time_from_fire_to_fruiting,
  fire_time_from_fire_to_peak_flowering, flower_diameter, flower_length,
  flower_orientation, flower_pollen_length, flowering_cues,
  fruit_colour, hydraulic_safety_margin_88,
  integrated_plant_transpiration, leaf_arrangement,
  leaf_chlorophyll_index_modified_ND705,
  leaf_fluorescence_quantum_yield, leaf_lamina_posture,
  leaf_specific_hydraulic_conductivity, leaf_turgor_loss_point,
  life_history_ephemeral_class, perianth_colour, petiole_length,
  petiole_width,
  plant_alternative_energy_and_nutrient_acquisition_strategy,
  post_fire_flowering, recruitment_time, resprouting_capacity,
  resprouting_capacity_juvenile,
  resprouting_capacity_proportion_individuals,
  sapwood_specific_hydraulic_conductivity,
  sapwood_specific_hydraulic_conductivity_theoretical,
  seed_germination_time, seed_surface_reflectivity, seedbank_location,
  seedbank_longevity, seedbank_longevity_class,
  seedling_establishment_conditions, stem_delta13C, stem_delta15N,
  stem_specific_hydraulic_conductivity,
  water_potential_12percent_lost_conductivity

Details on new studies:

| dataset_id        |  taxa | locations | traits | records |
|:------------------|------:|----------:|-------:|--------:|
| ABRS_2023         | 14359 |         1 |     33 |  183608 |
| Auld_2000         |    14 |         7 |      4 |      57 |
| Bradshaw_2022     |     2 |         8 |      6 |     228 |
| Britton_1994      |    62 |         1 |      1 |     124 |
| Brodribb_2000     |    11 |         2 |      4 |      44 |
| Burrows_2008      |    19 |         8 |      4 |      96 |
| Burrows_2020      |  1187 |         1 |      9 |    4982 |
| Canham_2009       |     4 |         1 |      4 |     278 |
| Canham_2023       |     9 |         1 |     12 |     954 |
| Collette_2021     |  3978 |         4 |      1 |    3990 |
| Cowling_1987      |     4 |         1 |     13 |      74 |
| Crowley_2007      |  2060 |         1 |      2 |    3823 |
| Draper_2023       |  4068 |         5 |      7 |   12346 |
| Eamus_2000        |     6 |         3 |      3 |      30 |
| Ellsworth_2015    |    11 |         6 |     16 |     617 |
| Enright_2014      |   155 |        33 |      3 |    2315 |
| Gosper_2022       |     4 |         2 |      7 |      27 |
| Grigg_2008        |     6 |         2 |     22 |     220 |
| Groves_1986       |     2 |         1 |     48 |     256 |
| Harvey_2017       |   180 |         3 |      6 |    1067 |
| He_2011           |    90 |         1 |      4 |     290 |
| Kocacinar_2003    |     5 |         1 |      6 |      30 |
| Kubiak_2009       |   828 |         3 |      8 |    3077 |
| Lawes_2014        |     9 |         5 |      1 |       9 |
| Mesaglio_2022     |   303 |         1 |      1 |     593 |
| Mitchell_2008     |    21 |         3 |     12 |     228 |
| Morgan_2021       |    10 |        24 |      3 |     165 |
| NHNSW_2023        |  7984 |         1 |     33 |   96604 |
| NTH_2023          |  2368 |         1 |     33 |   29412 |
| Nano_2011         |  1998 |         1 |      8 |    4466 |
| Pate_1990         |    67 |         1 |      5 |     292 |
| Pate_1998         |    98 |         4 |      7 |     641 |
| Pfautsch_2016     |    31 |        21 |      6 |     736 |
| Pirralho_2014     |     9 |         1 |      7 |      63 |
| Prior_2022        |    15 |         5 |      3 |     443 |
| Purdie_1976       |    91 |         1 |      9 |     360 |
| RBGV_2023         |  5486 |         1 |     33 |   69020 |
| Richards_2021     |    21 |        10 |     14 |    1510 |
| Rumman_2018       |    56 |         8 |      4 |     220 |
| RussellSmith_2012 |  1462 |         1 |      4 |    5976 |
| SAH_2023          |  3673 |         1 |     33 |   40035 |
| Santini_2012      |     1 |         1 |      3 |      18 |
| Santini_2013      |     5 |         4 |      4 |     346 |
| Santini_2016      |     7 |         1 |      8 |     143 |
| Searson_2004      |     3 |         1 |      5 |      30 |
| Simpson_2021      |   288 |         1 |      3 |     608 |
| SinghRamesh_2019  |    14 |        24 |     17 |     973 |
| SinghRamesh_2023  |     4 |         1 |     25 |    1775 |
| SmithMartin_2020  |     8 |         1 |      6 |     115 |
| Stephens_2023     |   221 |         1 |      2 |     221 |
| Sweedman_2006     |  2147 |         1 |      2 |    7235 |
| Togashi_2015      |    37 |        38 |      1 |     226 |
| Tolsma_2007       |    37 |         1 |      7 |     244 |
| Tsakalos_2020     |  1280 |         4 |     23 |   22004 |
| Tsakalos_2022     |   498 |         1 |      3 |    1174 |
| WAH_2023_1        |   612 |         1 |     24 |    3256 |
| WAH_2023_2        | 12345 |         1 |     16 |   24568 |
| Wenk_2023         | 29803 |         1 |      1 |   29803 |
| Wenk_2023_2       |   245 |         1 |      1 |     278 |
| Wilson_2004       |    39 |         1 |      2 |      91 |
| Witkowski_1991    |     3 |         1 |      9 |      30 |
| Wooller_2002      |     3 |         1 |     11 |      32 |
| Yang_2023         |  1358 |        11 |     19 |    2635 |
| Yunusa_2010       |     2 |         2 |      3 |      12 |
| deCampos_2013     |     8 |         2 |      3 |      24 |
| eFLOWER_Dun_2022  |  1889 |         1 |     35 |   30769 |
| vanderMoezel_1987 |   211 |         1 |      6 |     436 |


Additionally, the release contains improvements to the trait dictionary:

* Revised trait definitions related to fire response, following trait definitions workshop
* Trait definitions file synchronised to the first release of the AusTraits Plant Dictionary. Most importantly, uri's added to each trait definition; these are the resolvable w3id.org/APD identifiers

Fixes to taxonomic_updates and taxon_list:

* Ensure (once again) that as many taxon names as possible align to an APC-known or APC-accepted name
* Continue working to remove duplicate entries that creep into taxon_list.csv

Minor work on the R workflow:

* Update syntax to dplyr 1.10
* Update tests to pass testthat 3.1.8
* Edit metadata_create_template to add proper fields for data_collectors
* Make it possible to add `entity_type` and `value_type` from columns by disallowing values from schema



# AusTraits v4.1.0

This is major/minor release of the AusTraits database.

  - austraits-4.1.0.zip: contains the compiled dataset and detailed of
    structure
  - austraits-4.1.0.rds: contains a version of the dataset for direct
    loading in R
  - source code v4.1.0.zip: contains the source materials used to build
    the compiled dataset

For details on access, structure and usage please visit
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v4.1.0> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v4.0.0>…v4.1.0

Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset\_id |  taxa | locations | traits | records |
| :------ | ----------: | ----: | --------: | -----: | ------: |
| 4.0.0   |         296 | 34028 |      2697 |    470 | 1257443 |
| 4.1.0   |         296 | 34017 |      2697 |    464 | 1253250 |

This release contains:

  - Align units with UCUM standards
  - Correct small mistakes in plant woodiness and life history in datasets extracted from national and state floras (ABS_2022; WAH_2022_1; WAH_2022_2; NHNSW_2022; RBGV_2022; SAH_2022; NTH_2022)
  - Remove a small number of duplicate taxa from taxon.csv
  - Fix mistake in process.R script that was duplicating methods for some dataset by trait combinations
  - Further standardise trait names

# AusTraits v4.0.0


This is major/minor release of the AusTraits database.
-   austraits-4.0.0.zip: contains the compiled dataset and detailed of
    structure
-   austraits-4.0.0.rds: contains a version of the dataset for direct
    loading in R
-   source code v4.0.0.zip: contains the source materials used to build
    the compiled dataset

For details on access, structure and usage please visit
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at <https://github.com/traitecoevo/austraits.build/releases/tag/v4.0.0>. 

A full set of changes in the source can be viewed at: <https://github.com/traitecoevo/austraits.build/compare/v3.0.2…v4.0.0>

Compared to the last version, this release contains substantial additions of new data and improvement of old data.

| version | dataset_id |  taxa | locations | traits | records |
|:--------|-----------:|------:|----------:|-------:|--------:|
| 3.0.2   |        283 | 28640 |      4721 |    448 |  997808 |
| 4.0.0   |        296 | 34028 |      2697 |    470 | 1257443 |

Changes for this release include:

* Established code as a standalone package
* Align variables (column names) with Darwin Core, Dublin Core, and the Ecological Trait-data Standard
* Allowing more metadata to be associated with individual trait measurements instead of traits or the dataset (e.g. life stage, replicates, entity type)
* Rework context, so that multiple context properties can be read in
* Reworked identifiers, including 5 separate context property identifiers and location id
* Add source_id, such that individual rows of data can be attributed to a specific source
* Merge different date fields into `collection_date`
* Work from two separate vocabulary workshops merged in (`Seed Traits` & `Whole Plant and Leaf Vegetative Traits`). Also some work realigning traits related to fire response.
* Rename other traits to have more consistent naming
* Added entity_type, reflecting the entity being measured
* Added scraped data from online floras for 7 traits related to plant growth form. For `plant_growth_form` and `woodiness` manually gap-filled from the taxonomic literature to have complete data coverage
* Reworked how taxonomic names are processed, such that submitted taxon names are now aligning to the most specific taxon name possible, with separate columns for `family`; `genus`; `binomial`; `trinomial`, filled in as appropriate.
* New taxonomic updates added, based on updated algorithms that do a much better job of capturing phrase names and submitted taxon names that include notes. In addition, algorithms automatically identify names that can only be aligned to genus.
* Removed taxon matching code from austraits.build (to become part of a separate package)
* Add database metadata into the build process

This release contains:

-   **14 new sources added to the dataset**: ABRS_2022,
    ATRP_2020, Campbell_2006, Clarke_2009,
    NHNSW_2022, Nolan_2022, NTH_2022, RBGV_2022, SAH_2022, WAH_2022_1,
    WAH_2022_2, Wenk_2022, Williams_2012
-   **12 new contributors:** Alastair Robinson,
    Andre Messina, Daniel Ohlsen, David Coleman, Elizabeth Wenk,
    Matthias M. Boer, Monica Campbell, Neville Walsh, Niels Klazenga,
    Paul R. Williams, Rachael Nolan, Val Stajsic
-   **3 sources renamed** : Barlow_1981 -> ABRS_1981, RBGSYD_2014 -> NHNSW_2014, RBGSYD_2014_2 -> NHNSW_2014_2

Details on new studies:

| dataset_id    |  taxa | locations | traits | records |
|:--------------|------:|----------:|-------:|--------:|
| ABRS_2022     | 13988 |         1 |      7 |   48353 |
| ATRP_2020     |  1490 |         1 |      8 |    1831 |
| Campbell_2006 |    65 |         3 |      6 |     390 |
| Clarke_2009   |   469 |         6 |      7 |    1824 |
| NHNSW_2022    |  7913 |         1 |      7 |   28354 |
| Nolan_2022    |    18 |         8 |     10 |     606 |
| NTH_2022      |  2451 |         1 |      7 |    8183 |
| RBGV_2022     |  5368 |         1 |      7 |   19060 |
| SAH_2022      |  3499 |         1 |      7 |   11905 |
| WAH_2022_1    |   683 |         1 |      7 |    2254 |
| WAH_2022_2    | 13331 |         1 |      7 |   48703 |
| Wenk_2022     | 30280 |         1 |      2 |   60309 |
| Williams_2012 |    79 |         1 |      6 |     206 |


**Full Changelog**: https://github.com/traitecoevo/austraits.build/compare/v3.0.2...v4.0.0


# AusTraits v3.0.2

This is minor release of the AusTraits database.

-   austraits-3.0.2.zip: contains the compiled dataset and detailed of
    structure
-   austraits-3.0.2.rds: contains a version of the dataset for direct
    loading in R
-   source code v3.0.2.zip: contains the source materials used to build
    the compiled dataset

For details on access, structure and usage please visit
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v3.0.2> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v3.0.1...v3.0.2>

Compared to the last version, this release contains corrections on citations.

| version | dataset\_id |  taxa | sites | traits | records |
|:--------|------------:|------:|------:|-------:|--------:|
| 3.0.1   |         283 | 28640 |  4721 |    448 |  997808 |
| 3.0.2   |         283 | 28640 |  4721 |    448 |  997808 |

This release contains:
-   **0 new sources added to the dataset**
-   **0 new contributors**
-   **0 sources removed**
-   **0 new or updated records for 0 existing traits**
-   **0 new records for 0 new traits**


# AusTraits v3.0.1

This is minor release of the AusTraits database.

-   austraits-3.0.1.zip: contains the compiled dataset and detailed of
    structure
-   austraits-3.0.1.rds: contains a version of the dataset for direct
    loading in R
-   source code v3.0.1.zip: contains the source materials used to build
    the compiled dataset

For details on access, structure and usage please visit
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v3.0.1> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v3.0.0…v3.0.1>

Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset\_id |  taxa | sites | traits | records |
|:--------|------------:|------:|------:|-------:|--------:|
| 3.0.0   |         283 | 28639 |  4721 |    446 |  997808 |
| 3.0.1   |         283 | 28640 |  4721 |    448 |  997808 |

This release contains:

- fixes to leaf areas in previous version in Everingham\_2020
- updates on definitions

# AusTraits v3.0.0

This is major release of the AusTraits database.

-   austraits-3.0.0.zip: contains the compiled dataset and detailed of
    structure
-   austraits-3.0.0.rds: contains a version of the dataset for direct
    loading in R
-   source code v3.0.0.zip: contains the source materials used to build
    the compiled dataset

For details on access, structure and usage please visit
<https://doi.org/10.5281/zenodo.3568417>

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v3.0.0> A
full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v2.1.0...v3.0.0>

Compared to the last version, this release contains substantial
additions of new data and improvement of old data.

| version | dataset\_id |  taxa | sites | traits | records |
|:--------|------------:|------:|------:|-------:|--------:|
| 2.1.0   |         264 | 29230 |  4605 |    375 |  937243 |
| 3.0.0   |         283 | 28639 |  4721 |    446 |  997808 |

This release contains:

-   **21 new sources added to the dataset**: Apgaua\_2015, Apgaua\_2017,
    Atkinson\_2020, Atkinson\_2020\_2, Curran\_2009, Detombeur\_2021,
    Du\_2018, Du\_2019, eFLOWER\_2021, EsperonRodriguez\_2019,
    Farrell\_2012, Farrell\_2013, Farrell\_2017, Grootemaat\_2015,
    Grootemaat\_2017\_1, Grootemaat\_2017\_2, Jurado\_1991,
    Kanowski\_2000, NSWFRD\_2014, Stephens\_2021, Wells\_2012

-   **29 new contributors:** Andrea Lopez Martinez, Belinda Kenny,
    Christopher Szota, Claire Farrell, Corinna Orscheg, Deborah Apgaua,
    Don Butler, Elizabeth Tasker, Felix de Tombeur, Graham Zemunik,
    Herve Sauquet, Hugh Possingham, Jacob McC. Overton, Jessie Wells,
    Joe Atkinson, John Kanowski, Juerg Schoenenberger, Malcolm Gill,
    Maria von Balthazar, Nigel Warwick, Pengzhen Du, Ross Bradstock,
    Ruby Stephens, Saskia Grootemaat, Stefan Arndt, Susan Laurance,
    Susana Magallon, Timothy Curran, Veronica Shaw

-   **2 sources removed**– most replaced by corrected or updated sources
    above: EsperonRodriguez\_2019\_2, Jurado\_1993

-   **50428 new or updated records for 98 existing traits**

-   **15156 new records for 72 new traits:** bark\_Al\_per\_dry\_mass,
    bark\_ash\_content\_per\_dry\_mass, bark\_B\_per\_dry\_mass,
    bark\_cellulose\_per\_dry\_mass, bark\_Cu\_per\_dry\_mass,
    bark\_Fe\_per\_dry\_mass, bark\_lignin\_per\_dry\_mass,
    bark\_Mn\_per\_dry\_mass, bark\_S\_per\_dry\_mass,
    bark\_tannin\_per\_dry\_mass, bark\_water\_content\_per\_dry\_mass,
    bark\_Zn\_per\_dry\_mass, cotyledon\_function,
    establishment\_light\_environment\_index, fire\_flame\_duration,
    fire\_fuel\_bed\_bulk\_density, fire\_fuel\_comsumption,
    fire\_rate\_of\_spread, fire\_smoulder\_duration,
    fire\_time\_to\_ignition, fire\_total\_burn\_duration,
    flower\_androecium\_structural\_merism,
    flower\_androecium\_structural\_phyllotaxis,
    flower\_androecium\_structural\_whorls\_count,
    flower\_anther\_attachment, flower\_anther\_connective\_extension,
    flower\_anther\_dehiscence, flower\_anther\_orientation,
    flower\_fertile\_stamens\_count, flower\_filament,
    flower\_filament\_fusion,
    flower\_filament\_fusion\_to\_inner\_perianth,
    flower\_gynoecium\_phyllotaxis, flower\_gynoecium\_placentation,
    flower\_ovary\_fusion, flower\_ovary\_position,
    flower\_ovules\_per\_functional\_carpel\_count,
    flower\_perianth\_differentiation, flower\_perianth\_fusion,
    flower\_perianth\_merism, flower\_perianth\_parts\_count,
    flower\_perianth\_phyllotaxis, flower\_perianth\_symmetry,
    flower\_perianth\_whorls\_count, flower\_pollen\_aperture\_shape,
    flower\_pollen\_apertures\_count,
    flower\_structural\_carpels\_count, flower\_structural\_sex\_type,
    flower\_style\_differentiation, flower\_style\_fusion,
    leaf\_ash\_content\_per\_dry\_mass, leaf\_cellulose\_per\_dry\_mass,
    leaf\_Co\_per\_dry\_mass, leaf\_Cr\_per\_dry\_mass, leaf\_curliness,
    leaf\_phenol\_content\_per\_dry\_mass,
    leaf\_relative\_water\_content\_at\_turgor\_loss\_point,
    leaf\_relative\_water\_content\_predawn, leaf\_Se\_per\_dry\_mass,
    leaf\_Si\_per\_dry\_mass, leaf\_tannin\_per\_dry\_mass,
    osmotic\_potential\_at\_full\_turgor,
    reproductive\_light\_environment\_index,
    sapwood\_specific\_conductivity\_theoretical,
    seedling\_germination\_location, senesced\_leaf\_Al\_per\_dry\_mass,
    senesced\_leaf\_B\_per\_dry\_mass,
    senesced\_leaf\_C\_per\_dry\_mass,
    senesced\_leaf\_Na\_per\_dry\_mass,
    stomatal\_resistance\_conductance\_ambient,
    vessel\_multiple\_fraction, whole\_plant\_transpiration

Details on new studies:

| dataset\_id            | taxa | sites | traits | records |
|:-----------------------|-----:|------:|-------:|--------:|
| Apgaua\_2015           |    8 |     1 |     12 |     360 |
| Apgaua\_2017           |   91 |     1 |     10 |     990 |
| Atkinson\_2020         |    1 |    36 |      4 |     720 |
| Atkinson\_2020\_2      |   11 |     6 |      2 |     100 |
| Curran\_2009           |    4 |     4 |     10 |     778 |
| Detombeur\_2021        |   96 |    25 |      9 |    2679 |
| Du\_2018               |   20 |     1 |      5 |     540 |
| Du\_2019               |   20 |     1 |      4 |     316 |
| eFLOWER\_2021          |  234 |     1 |     29 |    5844 |
| EsperonRodriguez\_2019 |    2 |     1 |      7 |     140 |
| Farrell\_2012          |    2 |     1 |      4 |      44 |
| Farrell\_2013          |   12 |     1 |     15 |    1417 |
| Farrell\_2017          |   18 |     1 |      6 |     670 |
| Grootemaat\_2015       |   32 |     4 |     19 |    6839 |
| Grootemaat\_2017\_1    |   10 |     3 |     50 |    2583 |
| Grootemaat\_2017\_2    |   25 |     4 |     10 |     859 |
| Jurado\_1991           |  231 |     1 |      7 |    1331 |
| Kanowski\_2000         |  150 |    17 |     25 |    9171 |
| NSWFRD\_2014           | 2990 |     1 |     11 |   16519 |
| Stephens\_2021         |  600 |     1 |      1 |     851 |
| Wells\_2012            |  207 |    49 |     18 |   12833 |

# AusTraits v2.1.0

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v2.1.0>

A full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v2.0.0...v2.1.0>

Compared to the last version, this release contains substantial
additions of new data and improvement of old data, mainly by Lizzy Wenk.

| version | dataset\_id |  taxa | sites | traits | records |
| :------ | ----------: | ----: | ----: | -----: | ------: |
| v2.0.0  |         256 | 22540 |  4475 |    362 |  677087 |
| v2.1.0  |         264 | 29230 |  4605 |    375 |  937243 |

This release contains:

  - **9 new sources added to the dataset**: Cheal\_2017,
    EsperonRodriguez\_2020, Everingham\_2020, Jagdish\_2020,
    MacinnisNg\_2004, MacinnisNg\_2016, Nicolle\_2006, Sjostrom\_2006,
    White\_2020

  - **1 sources removed**– most replaced by corrected or updated sources
    above: EsperonRodriguez\_2019

  - **204456 new or updated records for 48 existing traits**

  - **55318 new records for 13 new traits:** bark\_morphology,
    calcicole\_status, fire\_and\_establishing,
    fire\_response\_juvenile, fire\_response\_on\_maturity,
    inundation\_tolerance, reproductive\_maturity, seed\_longevity,
    seed\_release, snow\_tolerance, stem\_density,
    transverse\_branch\_area\_specific\_conductivity,
    water\_logging\_tolerance

  - **13 new contributors:** Anne Sjostrom, Ashika Jagdish, Catriona
    Macinnis-Ng, David Cheal, Doug Frood, Jugo Ilic, Jürgen Kellermann,
    Kate McClenahan, Malcolm Trudgen, Matthew White, Michele Kohout,
    Steven Sinclair, Susan Everingham

Details on new studies:

| dataset\_id            |  taxa | locations | traits | records |
| :--------------------- | ----: | --------: | -----: | ------: |
| Cheal\_2017            |  2023 |         1 |     10 |   12449 |
| EsperonRodriguez\_2020 |     4 |         4 |     10 |     796 |
| Everingham\_2020       |    42 |        76 |     16 |   19200 |
| Jagdish\_2020          |    93 |        49 |      2 |     569 |
| MacinnisNg\_2004       |     9 |         4 |      8 |     478 |
| MacinnisNg\_2016       |     1 |         1 |     11 |     546 |
| Nicolle\_2006          |   991 |         1 |      3 |    2144 |
| Sjostrom\_2006         | 21950 |         1 |      4 |   77510 |
| White\_2020            |  7060 |         1 |     22 |  146082 |


# AusTraits v2.0.0

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v2.0.0>

A full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v1.0.0...v2.0.0>

Compared to the last version, this release

- Entails a substantial reworking of taxonomic alignments. We have switched from aligning against The Plant List (no longer updated) to aligning against the Australian Plant Census (best taxonomic information for Australian Plants).
- Also additions of new data and improvement of old data, mainly by Lizzy Wenk.
- The total number of taxa has apparently decreased, but many of the previous names were unmatched. Successful identifying and updating synonyms reduces the total taxa count, but with a higher fraction known:
  - v1.0.0: 20,783 known taxa, 2,979 unknown
  - v2.0.0: 21,143 known taxa, 1,397 unknown
- This switch involves some renaming:
  - `species_name` replaced by `taxon_name`, `species` replaced by `taxon` / `taxa`
  - the dataframe `taxonomy` and been renamed `taxa`
  - additional of new dataframe `taxonomic_updates` showing all taxonomic updates

| version | dataset\_id |  taxa | sites | traits | records |
| :------ | ----------: | ----: | ----: | -----: | ------: |
| v1.0.0  |         243 | 23383 |  4196 |    345 |  656467 |
| v2.0.0  |         256 | 22540 |  4475 |    362 |  677087 |

This release contains:

  - **15 new sources added to the dataset**: Caldwell\_2016,
    Cheesman\_2020, Choat\_2006, Choat\_2012, Geange\_2020,
    Gosper\_2004, Gosper\_2012, Gosper\_2018, Jordan\_2015,
    Jordan\_2020, Kirkpatrick\_2020, McGlone\_2015, Meers\_2007,
    Read\_2003, Williams\_2011

  - **2 sources removed**– most replaced by corrected or updated sources
    above: Meers\_2010, Williams\_2020\_1

  - **29434 new or updated records for 73 existing traits**

  - **1503 new records for 16 new traits:** competitive\_stratum,
    guard\_cell\_length, hydraulic\_safety\_margin\_50,
    leaf\_transpiration, leaf\_work\_to\_punch,
    leaf\_work\_to\_punch\_adjusted, leaf\_work\_to\_shear,
    leaf\_work\_to\_shear\_adjusted, leaf\_work\_to\_tear,
    leaf\_work\_to\_tear\_adjusted, parasitic, ploidy,
    stomatal\_distribution, time\_from\_fire\_to\_fruit,
    water\_potential\_50percent\_lost\_conductivity,
    water\_potential\_88percent\_lost\_conductivity

  - **20 new contributors:** Aina Price, Alex Cheesman, Amanda Spooner,
    Amy Hahs, Ben Richardson, Brendan Choat, Carl Gosper, Catherine
    Tait, Colin Yates, Elizabeth Caldwell, Helen Coleman, Hellmut R.
    Toelken, James Kirkpatrick, Matthew McGlone, Monique Hallet, Raymond
    Carpenter, Richard Duncan, Sabine Kasel, Steven Clemants, Suzanne
    Prober

Details on new studies:

| dataset\_id       | taxa | locations | traits | records |
| :---------------- | ---: | --------: | -----: | ------: |
| Caldwell\_2016    |   20 |         2 |      6 |     598 |
| Cheesman\_2020    |   88 |         2 |     12 |    1685 |
| Choat\_2006       |    4 |         3 |     16 |     948 |
| Choat\_2012       |   37 |        15 |      4 |     104 |
| Geange\_2020      |    1 |         1 |      5 |     487 |
| Gosper\_2004      |   25 |         4 |      5 |      48 |
| Gosper\_2012      |  344 |         1 |      7 |    1870 |
| Gosper\_2018      |  117 |         1 |      8 |     536 |
| Jordan\_2015      |   61 |        36 |      4 |     248 |
| Jordan\_2020      | 1101 |       215 |     19 |    4464 |
| Kirkpatrick\_2020 |  215 |         1 |      4 |     418 |
| McGlone\_2015     | 1330 |         4 |      6 |    8205 |
| Meers\_2007       |  127 |         1 |     11 |    1378 |
| Read\_2003        |   16 |         2 |     19 |     890 |
| Williams\_2011    |  943 |         1 |     12 |    9058 |

# AusTraits v1.0.0

This release was generated from source materials available at
<https://github.com/traitecoevo/austraits.build/releases/tag/v1.0.0>

A full set of changes in the source can be viewed at:
<https://github.com/traitecoevo/austraits.build/compare/v0.9.1...v1.0.0>

Compared to the last version, this release contains 

- substantial additions of new data and improvement of old data, including new traits.
- additions of a contexts field, to allow for variation in measurement conditions within a site

This will also be the last release using taxonomy aligned to TaxonStand

| version | dataset\_id | species | sites | traits | records |
| :------ | ----------: | ------: | ----: | -----: | ------: |
| v0.9.1  |         175 |   21892 |  3436 |    170 |  467523 |
| v1.0.0  |         243 |   23383 |  4196 |    345 |  656467 |

This release contains:

  - **98 new sources added to the dataset**: Angevin\_2011, Baker\_2019,
    Bloomfield\_2018, Buckton\_2019, Cernusak\_2006, Cernusak\_2011,
    Cooper\_2013, CPBR\_2002, Cross\_2009, Crous\_2013, Crous\_2019,
    Curtis\_2012, Dong\_2017, Duan\_2015, Dwyer\_2018,
    EsperonRodriguez\_2019, EsperonRodriguez\_2019\_2, Falster\_2003,
    Firn\_2019, French\_2017, Gallagher\_2012, Gallagher\_2015,
    Gallagher\_2018, Geange\_2017, Ghannoum\_2010, Gray\_2019,
    Gross\_2005, Hall\_1981, Hocking\_1982, Hocking\_1986, Huang\_2015,
    Jin\_2019, Jordan\_2001, Jurado\_1992, Kotowska\_2020, Kuo\_1982,
    Leigh\_2003, Leigh\_2006, Leishman\_2007, Lewis\_2015, Meers\_2010,
    Metcalfe\_2009, Metcalfe\_2020\_1, Metcalfe\_2020\_2, Milberg\_1997,
    Milberg\_1998, Mokany\_2015, Moore\_2019\_2, Muir\_2014,
    Nicholson\_2017, Onoda\_2010, Ooi\_2007, Ooi\_2018, Pickering\_2014,
    Pickup\_2002, Pickup\_2005, Pollock\_2012, Pollock\_2018,
    Prior\_2016, RBGSYD\_2014\_2, Read\_2005, Reynolds\_2018,
    Richards\_2008, Roderick\_1999, Roderick\_2002, Rosell\_2014,
    Sams\_2017, Schmidt\_1993, Schmidt\_1997, Schmidt\_2010,
    Schulze\_2006, Schulze\_2006\_2, Schulze\_2014, Smith\_1996,
    Smith\_2012, Soper\_2014, Staples\_2019, Stewart\_1995,
    Taseski\_2017, Taylor\_2008, Thomas\_2017, Tomlinson\_2019,
    Turner\_2010, Veneklaas\_2003, Venn\_2011, Vesk\_2019,
    Vlasveld\_2018, Warren\_2005, Warren\_2006, Weerasinghe\_2014,
    Westman\_1977, Williams\_2005, Williams\_2020\_1, Wright\_2009,
    Wright\_2019, Zanne\_2009, Zieminska\_2013, Zieminska\_2015

  - **30 sources removed**– most replaced by corrected or updated
    sources above: Angevin\_2010, BFD\_1974, Bolza\_1975, CAB\_2009,
    Chave\_2009, Chinh\_1999, Chudnoff\_1984, CIRAD\_2009,
    Cornellison\_0000, CPRR\_2002, Cross\_2011, Desh\_1996,
    Dimitri\_1973, Dwyer\_2017\_2, EsperonRodriguez\_0000,
    EsperonRodriguez\_0000\_2, Flynn\_2001, Goldsmith\_1981, Hong\_1999,
    ICRAF\_2009, Jin\_0000, Martawijaya\_1992, Meier\_2007, Ooi\_0000,
    Prospect\_2009, RBGSYD\_0000, Seng\_1951, Wells\_2009,
    Westoby\_2016, Wright\_2004

  - **258809 new or updated records for 96 existing traits**

  - **53285 new records for 152 new traits:** bark\_C\_per\_dry\_mass,
    bark\_Ca\_per\_dry\_mass, bark\_delta13C, bark\_delta15N,
    bark\_density, bark\_K\_per\_dry\_mass, bark\_Mg\_per\_dry\_mass,
    bark\_N\_per\_dry\_mass, bark\_Na\_per\_dry\_mass,
    bark\_P\_per\_dry\_mass, ca, carotenoid\_per\_area,
    carotenoid\_per\_dry\_mass, cell\_rubisco\_concentration,
    cell\_rubisco\_N\_per\_total\_N, cell\_thylakoid\_N\_per\_total\_N,
    chlorophyll\_A\_B\_ratio, chlorophyll\_A\_per\_area,
    chlorophyll\_A\_per\_dry\_mass, chlorophyll\_B\_per\_area,
    chlorophyll\_B\_per\_dry\_mass, chlorophyll\_per\_area,
    chlorophyll\_per\_dry\_mass, ci, ci\_at\_Amax, ci\_at\_Asat,
    ci\_over\_ca, dead\_wood\_Ca\_per\_dry\_mass,
    dead\_wood\_K\_per\_dry\_mass, dead\_wood\_Mg\_per\_dry\_mass,
    dead\_wood\_N\_per\_dry\_mass, dead\_wood\_Na\_per\_dry\_mass,
    dead\_wood\_P\_per\_dry\_mass, dispersers,
    epidermal\_cell\_density\_abaxial,
    epidermal\_cell\_density\_adaxial,
    epidermal\_cell\_density\_both\_sides, epidermis\_thickness,
    epidermis\_thickness\_lower\_leaf\_surface,
    epidermis\_thickness\_upper\_leaf\_surface, fire\_cued\_seeding,
    flower\_count\_maximum, flower\_N\_per\_dry\_mass, fruit\_breadth,
    fruit\_Ca\_per\_dry\_mass, fruit\_K\_per\_dry\_mass, fruit\_mass,
    fruit\_Mg\_per\_dry\_mass, fruit\_N\_per\_dry\_mass,
    fruit\_P\_per\_dry\_mass, fruit\_S\_per\_dry\_mass,
    fruit\_type\_botanical, fruit\_wall\_width, germination,
    insoluable\_protein\_per\_area, Jmax\_per\_area, leaf\_absorption,
    leaf\_Cl\_per\_dry\_mass, leaf\_dark\_transpiration\_per\_area,
    leaf\_delta18O, leaf\_density, leaf\_mass\_to\_stem\_mass,
    leaf\_PRI, leaf\_reflectance, leaf\_reflectance\_near\_infrared,
    leaf\_soluable\_starch\_per\_mass,
    leaf\_soluable\_sugars\_per\_mass,
    leaf\_total\_non-structural\_carbohydrates\_per\_area,
    leaf\_total\_non-structural\_carbohydrates\_per\_mass,
    leaf\_transmission, leaf\_transpiration\_at\_Asat,
    leaf\_water\_content\_per\_dry\_mass,
    leaf\_water\_content\_per\_fresh\_mass,
    leaf\_water\_content\_per\_saturated\_mass, leaf\_xylem\_delta15N,
    modulus\_of\_elasticity\_bark, modulus\_of\_elasticity\_stem,
    modulus\_of\_elasticity\_xylem, palisade\_cell\_length,
    palisade\_cell\_width, palisade\_layer\_number, pendulous\_leaves,
    photosynthetic\_bark, physical\_defence, pollination\_syndrome,
    pollination\_system, propagule\_longevity,
    resprouting\_proportion\_individuals, resprouting\_strength,
    root\_C\_per\_dry\_mass, root\_delta13C, root\_delta15N,
    root\_dry\_matter\_content, root\_mass\_fraction,
    root\_N\_per\_dry\_mass, root\_shoot\_ratio,
    root\_soluable\_starch\_per\_mass,
    root\_soluable\_sugars\_per\_mass, root\_xylem\_delta15N,
    seed\_Ca\_concentration, seed\_K\_concentration,
    seed\_Mg\_concentration, seed\_N\_concentration,
    seed\_S\_concentration, sex\_type, soil\_seedbank,
    soluable\_protein\_per\_area, soluable\_starch\_per\_area,
    soluable\_sugars\_per\_area, specific\_taproot\_length, spinescence,
    sprout\_depth, starch\_per\_area, stem\_count\_categorical,
    stem\_hydraulic\_conductivity, stem\_mass\_fraction,
    stem\_respiration\_per\_dry\_mass,
    stem\_soluable\_starch\_per\_mass,
    stem\_soluable\_sugars\_per\_mass,
    stem\_water\_content\_per\_saturated\_mass, stem\_water\_delta18O,
    stomatal\_conductance\_per\_area\_ambient,
    stomatal\_conductance\_per\_area\_at\_Asat,
    stomatal\_density\_abaxial, stomatal\_density\_adaxial,
    support\_fraction, Vcmax\_per\_area, vegetative\_regeneration,
    vein\_angle\_secondary, vein\_density, vessel\_density,
    vessel\_diameter, vessel\_diameter\_hydraulic,
    vessel\_lumen\_fraction, vessel\_wall\_fraction,
    vine\_climbing\_mechanism, water\_use\_efficiency\_intrinsic,
    water\_use\_efficiency\_photosynthetic,
    wood\_axial\_parenchyma\_fraction, wood\_C\_per\_dry\_mass,
    wood\_Ca\_per\_dry\_mass, wood\_conduit\_fraction, wood\_delta13C,
    wood\_delta15N, wood\_fibre\_fraction, wood\_K\_per\_dry\_mass,
    wood\_Mg\_per\_dry\_mass, wood\_N\_per\_dry\_mass,
    wood\_Na\_per\_dry\_mass, wood\_P\_per\_dry\_mass,
    wood\_ray\_fraction, wood\_tracheid\_fraction

  - **`rlength(new_people)` new contributors:** Aaron Phillips, Adrienne
    Nicotra, Aine Nicholson, Alessandro Conti, Allison Frith, Andrea
    Leigh, Andrew Baker, Anna Salomaa, Anne Fuchs, Annette Muir, Ben
    French, Benjamin Smith, Bree-Anne Laugier-Kitchener, Bronwyn
    Collins, Brook Clinton, Carolyn Vlasveld, Catherine Pickering,
    Charles Warren, Chris Fahey, Chris Guinane, Christiane Ludwig,
    Claire Laws, Colin P. Osborne, Collin W. Ahrens, Dana Lanceman,
    Daniel Metacalfe, Daniel Montoya Londono, Daniel Taylor, David
    Tissue, Dean Nicolle, Des Nelson, Dominic Neyland, Elissa McFarlane,
    Ellen Curtis, Emma Gray, Erica Williams, Fiona Soper, Frank van
    Langevelde, Freya Thomas, Genevieve Buckton, George Perry, George
    Stewart, Guomin Huang, Guy Taseski, Hannah MacPherson, Hoa Ran Lai,
    Honglang Duan, Iain Colin Prentice, Ian Kealley, J. Bastow Wilson,
    Jacob McOverton, James Camac, James Lewis, Jennifer Read, Jian Yen,
    John Foster, John Kuo, Juergen Kellermann, Jugi Ilic, Julieta A.
    Rosell, Kaely Kreger, Karen Marais, Kasia Zieminska, Kathryn Willis,
    Keith Bloomfield, Kristine Crous, Lasantha Weerasinghe, Liz Lindsay,
    Loren Pollitt, Lucas Cernusak, Luka Kovac, Luke Shoo, Malcolm
    Trudgeon, Margaret Mayfield, Mark G. Tjoelker, Marlien van der
    Merwe, Martin Lambert, Martyna Kotowska, Mary Maconochie, Matthew
    Alfonzetti, Matthew Tom Harrison, Maurizio Rossetto, Melinda Pickup,
    Meredith Cosgrove, Michael Roderick, Michael Sams, Michelle
    Cochrane, Neil C. Turner, Neil Turner, Nicholas Moore, Nick
    Williams, Ning Dong, Oula Ghannoum, Owen Atkin, Paul Rymer, Per
    Milberg, Peter Hocking, Pieter Poot, R.J.Williams, Renee Smith, Riah
    Mason, Richard Mazanec, Rob Polmear, Robert Lanfear, Ronald
    Gardiner, Sonya Geange, Sophia Amini, Susanna Venn, Suzanne Schmidt,
    Tammy Haslehurst, Tanja Lenz, Tara Boreham, Thomas Pyne, TJ Hall,
    Tom North, Tony French, Trevor Meers, Ule Niinemets, Victoria
    Reynolds, W.E Westman, Willi A. Brand, William Cornwell, William
    Morris, Yusuke Onoda

Details on new studies:

| dataset\_id               | species | locations | traits | records |
| :------------------------ | ------: | --------: | -----: | ------: |
| Angevin\_2011             |      97 |         1 |      7 |     529 |
| Baker\_2019               |      57 |        39 |      3 |     114 |
| Bloomfield\_2018          |      79 |         7 |     24 |   26932 |
| Buckton\_2019             |      23 |         1 |     26 |    2203 |
| Cernusak\_2006            |       4 |         1 |     10 |     303 |
| Cernusak\_2011            |       8 |         6 |     21 |    1644 |
| Cooper\_2013              |    2703 |         1 |     11 |   26983 |
| CPBR\_2002                |     886 |         1 |      7 |    6889 |
| Cross\_2009               |      50 |         1 |      4 |     194 |
| Crous\_2013               |       1 |         1 |      8 |     391 |
| Crous\_2019               |       1 |         1 |     13 |    2366 |
| Curtis\_2012              |      95 |         4 |     14 |    1326 |
| Dong\_2017                |     242 |        27 |     10 |    3909 |
| Duan\_2015                |       1 |         1 |     13 |    2120 |
| Dwyer\_2018               |      17 |         1 |      2 |     193 |
| EsperonRodriguez\_2019    |       4 |         4 |     10 |     796 |
| EsperonRodriguez\_2019\_2 |       2 |         1 |      7 |     140 |
| Falster\_2003             |      38 |         2 |      3 |     114 |
| Firn\_2019                |      45 |         4 |      6 |    2049 |
| French\_2017              |      12 |         1 |      3 |      36 |
| Gallagher\_2012           |      94 |         1 |      7 |     302 |
| Gallagher\_2015           |     802 |         1 |      1 |     927 |
| Gallagher\_2018           |      62 |         4 |      5 |    1899 |
| Geange\_2017              |       3 |         1 |     19 |    4872 |
| Ghannoum\_2010            |       2 |         1 |     20 |    2364 |
| Gray\_2019                |      18 |         4 |     12 |     818 |
| Gross\_2005               |    1121 |         1 |      2 |    2279 |
| Hall\_1981                |      20 |         1 |      2 |     178 |
| Hocking\_1982             |       2 |         1 |     14 |      28 |
| Hocking\_1986             |       9 |         9 |     27 |     189 |
| Huang\_2015               |       1 |         1 |     18 |     870 |
| Jin\_2019                 |       1 |       184 |      1 |     184 |
| Jordan\_2001              |    1299 |         1 |      7 |    8208 |
| Jurado\_1992              |     105 |         1 |      1 |     315 |
| Kotowska\_2020            |      16 |        67 |     22 |    2992 |
| Kuo\_1982                 |       8 |         8 |     21 |     168 |
| Leigh\_2003               |       1 |         1 |      5 |     108 |
| Leigh\_2006               |       1 |         1 |     12 |     358 |
| Leishman\_2007            |      88 |         7 |      8 |     905 |
| Lewis\_2015               |       1 |         1 |     29 |    1902 |
| Meers\_2010               |     127 |         1 |     11 |    1378 |
| Metcalfe\_2009            |     285 |         8 |     17 |    4518 |
| Metcalfe\_2020\_1         |     308 |         1 |     20 |    1643 |
| Metcalfe\_2020\_2         |     603 |         1 |     19 |    9277 |
| Milberg\_1997             |       4 |         2 |      6 |      24 |
| Milberg\_1998             |      21 |         1 |      4 |      81 |
| Mokany\_2015              |    1180 |         1 |      3 |    2387 |
| Moore\_2019\_2            |      52 |         1 |     12 |    2080 |
| Muir\_2014                |       9 |         5 |      3 |      25 |
| Nicholson\_2017           |      30 |         1 |      2 |     115 |
| Onoda\_2010               |      32 |         4 |      7 |    1085 |
| Ooi\_2007                 |     181 |        98 |      2 |   14742 |
| Ooi\_2018                 |       5 |         1 |      1 |      25 |
| Pickering\_2014           |     169 |        51 |      4 |     691 |
| Pickup\_2002              |      20 |         1 |      2 |     322 |
| Pickup\_2005              |      70 |         4 |      5 |     389 |
| Pollock\_2012             |      20 |       135 |     10 |    3996 |
| Pollock\_2018             |      17 |        18 |      6 |     910 |
| Prior\_2016               |       7 |         1 |      3 |      21 |
| RBGSYD\_2014\_2           |    6421 |         1 |     14 |   81488 |
| Read\_2005                |      40 |         3 |      8 |    1562 |
| Reynolds\_2018            |       4 |         1 |     10 |     551 |
| Richards\_2008            |      74 |        39 |     51 |     891 |
| Roderick\_1999            |      57 |        28 |      7 |     453 |
| Roderick\_2002            |       4 |         1 |      4 |     500 |
| Rosell\_2014              |      62 |         4 |      8 |     496 |
| Sams\_2017                |     234 |         8 |      6 |    1042 |
| Schmidt\_1993             |     402 |         1 |      3 |     522 |
| Schmidt\_1997             |      46 |         1 |     11 |     388 |
| Schmidt\_2010             |      19 |         2 |     20 |    2258 |
| Schulze\_2006             |     406 |         1 |      3 |    1263 |
| Schulze\_2006\_2          |      72 |        74 |      7 |    2483 |
| Schulze\_2014             |     248 |        66 |     13 |    2494 |
| Smith\_1996               |      87 |         5 |     17 |   11342 |
| Smith\_2012               |       1 |         1 |     27 |    1014 |
| Soper\_2014               |      34 |         5 |     11 |    1044 |
| Staples\_2019             |     166 |         1 |      4 |    9686 |
| Stewart\_1995             |     114 |         4 |      6 |     863 |
| Taseski\_2017             |      22 |         1 |      5 |     110 |
| Taylor\_2008              |       7 |         4 |     11 |     390 |
| Thomas\_2017              |      18 |         5 |      7 |     126 |
| Tomlinson\_2019           |      12 |        11 |     11 |    3888 |
| Turner\_2010              |      17 |         4 |      7 |     671 |
| Veneklaas\_2003           |      29 |         1 |     18 |     565 |
| Venn\_2011                |      40 |         1 |      3 |     120 |
| Vesk\_2019                |      46 |         1 |      3 |    4439 |
| Vlasveld\_2018            |     319 |         1 |      5 |    2613 |
| Warren\_2005              |       1 |         1 |     16 |     240 |
| Warren\_2006              |      29 |         2 |     13 |     906 |
| Weerasinghe\_2014         |      26 |        63 |     17 |    1552 |
| Westman\_1977             |      16 |         1 |     30 |     559 |
| Williams\_2005            |     182 |         1 |      6 |    1063 |
| Williams\_2020\_1         |     943 |         1 |     12 |    9005 |
| Wright\_2009              |      41 |         8 |     13 |    1272 |
| Wright\_2019              |      18 |         1 |     37 |    7836 |
| Zanne\_2009               |     326 |         1 |      1 |     409 |
| Zieminska\_2013           |      23 |         4 |     10 |     720 |
| Zieminska\_2015           |      67 |         3 |     12 |    2464 |

# AusTraits v0.9.1

This release was generated from source materials available at https://github.com/traitecoevo/austraits.build/releases/tag/v0.9.1

A full set of changes in the source can be viewed at: https://github.com/traitecoevo/austraits.build/compare/v0.9.0...v0.9.1

Compared to the last version, this release contains substantial additions of new data and improvement of old data, mainly by Lizzy Wenk and Caitlan Baxter, who were employed via funding from the Australian Research Data Commons. 


| version | dataset\_id | species | sites | traits | records |
| :------ | ----------: | ------: | ----: | -----: | ------: |
| 0.9.0   |         139 |   19904 |   260 |     86 |  349261 |
| 0.9.1   |         175 |   21892 |  3436 |    170 |  467523 |


This release contains

- **45 new sources added to the dataset**: Ahrens\_2019, ANBG\_2019,
  Blackman\_2010, Chen\_2017, Clarke\_2015, Cornellison\_0000,
  Crisp\_2017, Dwyer\_2017\_2, EsperonRodriguez\_0000,
  EsperonRodriguez\_0000\_2, Funk\_2016, Gardiner\_2019,
  GrassBase\_2014, Groom\_1997, Groom\_2010, Guilherme\_Pereira\_2018,
  Guilherme\_Pereira\_2019, Hayes\_2014, Hayes\_2018, Jin\_0000,
  Kew\_2019\_1, Kew\_2019\_2, Kew\_2019\_3, Kew\_2019\_4,
  Kew\_2019\_5, Kew\_2019\_6, Lawson\_2015, Lee\_2019, Lim\_2017,
  Lusk\_2010, Lusk\_2014, Mokany\_2008, Moles\_2000, Moles\_2003,
  Moles\_2011, Moore\_2019, Munroe\_2019, Ooi\_0000, Osborne\_2014,
  RBGSYD\_2014, Schulze\_1998, Sendall\_2016, Standish\_2019,
  Westoby\_2014, Wills\_2018
- **9 sources removed**: Blackman\_2014, Butler\_2011, Chen\_2015\_1,
  Chen\_2015\_2, Crisp\_1984, Gallagher\_2011\_2, Gleason\_2012,
  Leishman\_2011, Schulze\_0000 -- these were replaced by corrected 
  or updated sources
- **427471 new records for 83 existing traits**
- **40052 new records for 87 new traits** – basal\_diameter,
  cell\_epidermis\_Ca\_per\_fresh\_mass,
  cell\_epidermis\_P\_per\_fresh\_mass,
  cell\_hypodermis\_Ca\_per\_fresh\_mass,
  cell\_hypodermis\_P\_per\_fresh\_mass,
  cell\_internal\_parenchyma\_Ca\_per\_fresh\_mass,
  cell\_internal\_parenchyma\_P\_per\_fresh\_mass,
  cell\_palisade\_mesophyll\_Ca\_per\_fresh\_mass,
  cell\_palisade\_mesophyll\_P\_per\_fresh\_mass,
  cell\_sclerenchyma\_Ca\_per\_fresh\_mass,
  cell\_sclerenchyma\_P\_per\_fresh\_mass,
  cell\_spongy\_mesophyll\_Ca\_per\_fresh\_mass,
  cell\_spongy\_mesophyll\_P\_per\_fresh\_mass, dormancy\_type,
  fire\_response\_detailed, fire-cued\_seeding, fv\_over\_fm,
  germination\_treatment, huber\_value, leaf\_Al\_per\_dry\_mass,
  leaf\_angle, leaf\_B\_per\_dry\_mass, leaf\_Ca\_per\_dry\_mass,
  leaf\_Cu\_per\_dry\_mass, leaf\_Fe\_per\_dry\_mass,
  leaf\_fresh\_mass, leaf\_fresh\_mass\_per\_area, leaf\_hairs\_adult,
  leaf\_hairs\_juvenile, leaf\_hydraulic\_conductance,
  leaf\_hydraulic\_vulnerability, leaf\_light\_respiration\_per\_area,
  leaf\_Mg\_per\_dry\_mass, leaf\_Mn\_per\_dry\_mass,
  leaf\_Mo\_per\_dry\_mass, leaf\_Na\_per\_dry\_mass,
  leaf\_photosynthetic\_nitrogen\_use\_efficiency\_maximum,
  leaf\_photosynthetic\_nitrogen\_use\_efficiency\_saturated,
  leaf\_photosynthetic\_phosphorus\_use\_efficiency\_maximum,
  leaf\_photosynthetic\_phosphorus\_use\_efficiency\_saturated,
  leaf\_S\_per\_dry\_mass, leaf\_spines\_adult,
  leaf\_transpiration\_at\_Amax, leaf\_turgor\_loss\_point,
  leaf\_Zn\_per\_dry\_mass, life\_form, modified\_NDVI,
  modulus\_of\_elasticity, modulus\_of\_rupture, N\_to\_P\_ratio,
  osmotic\_potential, photosynthetic\_rate\_per\_area\_maximum,
  photosynthetic\_rate\_per\_area\_saturated,
  photosynthetic\_rate\_per\_dry\_mass\_maximum,
  photosynthetic\_rate\_per\_dry\_mass\_saturated, plant\_width,
  resorption\_leaf\_N, resorption\_leaf\_P, root\_morphology,
  seed\_oil\_content, seed\_protein\_content, seed\_storage\_location,
  seed\_texture, seed\_viability, senesced\_leaf\_Ca\_per\_dry\_mass,
  senesced\_leaf\_Cu\_per\_dry\_mass,
  senesced\_leaf\_Fe\_per\_dry\_mass,
  senesced\_leaf\_K\_per\_dry\_mass,
  senesced\_leaf\_Mg\_per\_dry\_mass,
  senesced\_leaf\_Mn\_per\_dry\_mass,
  senesced\_leaf\_Mo\_per\_dry\_mass,
  senesced\_leaf\_N\_per\_dry\_mass,
  senesced\_leaf\_P\_per\_dry\_mass,
  senesced\_leaf\_S\_per\_dry\_mass,
  senesced\_leaf\_Zn\_per\_dry\_mass, soil\_salinity\_tolerance,
  specific\_root\_length, stem\_C\_per\_dry\_mass,
  stem\_dry\_matter\_content, stem\_N\_per\_dry\_mass,
  stomatal\_conductance\_per\_area\_at\_Amax, tap\_root,
  thickest\_root\_diameter, water\_balance\_index,
  water\_potential\_midday, water\_potential\_predawn,
  water\_tolerance
- **70 new contributors:** Collin Ahrens, Lydia Guja, Tim Brodribb,
  Gregory Jordan, Mark Ooi, Gregory Cawthray, John Dwyer, Caitlan
  Baxter, Gordon Sanson, Cheryl Edwards, Manuel Esperon-Rodriguez,
  Sally A. Power, Mark G.Tjoelker, Paul D. Rymer, Jennifer Funk,
  Rachel Standish, Derek Clayton, Maria Vorontsova, Philip K Groom,
  Caio Guilherme Pereira, Odhran S. O’Sullivan, Lasantha K.
  Weerasinghe, Owen K. Atkin, Patrick Hayes, Odhran S. O’Sullivan,
  Patrick E. Hayes, Peta Clode, Daniel Jin, Dieter Hochuli, Udayangani
  Liu, Etienne Laliberté, James Lawson, Brad Oberle, Amy E. Zanne,
  Jeff R. Powell, Jessica L. Rigg, Jocelyn Howell, Felix Lim, Laura
  Pollock, Judy Egan, Karel Mokany, Mike Olsen, Timothy Staples,
  Julian Ash, Ben D. Moore, Jane L. DeGabriel, Samantha Munroe, Greg
  Guerin, Ben Sparrow, Peter Myerscough, Tony Auld, Andrew
  O’Reilly-Nugent, Richard P. Duncan, Colin Osborne, plantNET,
  Alison Shapcott, State Herbarium of South Australia, Jürgen
  Kellermann, Willi Brand, Waltraud Schulze, Inge Schulze, Kerrie
  Sendall, Matthew Daws, Yue Phin David Jeremiah-Seok Tng, Greg J
  Jordan, Don Bulter, Jarrah Wills, Jennifer Firn, John Herbohn, Jing
  Hu


# AusTraits v0.9.0

This is the first major release of the AusTraits database.

This release was generated from source materials available at https://github.com/traitecoevo/austraits.build/releases/tag/v0.9.0

This release includes data accumulated until May 2019, but excluding data removed where there is ongoing restructuring or where data have not been correctly attributed.

Work up to this point was funded from ARC fellowship grants to Gallagher and Falster, as well as funding from Macquarie University (fellowship to Gallagher) and the Science Industry Endowment Fund (for Falster's salary in 2016).

