build_align_taxon_names <- function(austraits, dataset) {
  
  resources <- APCalign::load_taxonomic_resources()
  
  names_to_align <- austraits$taxonomic_updates %>%
    dplyr::filter(stringr::str_detect(dataset_id, dataset)) %>%
    dplyr::filter(!aligned_name %in% resources$APC$canonical_name & !aligned_name %in% resources$APNI$canonical_name) %>%
    dplyr::filter(is.na(taxonomic_resolution)) %>%
    dplyr::distinct(original_name)

  names_aligned <- 
    APCalign::align_taxa(original_name = names_to_align$original_name) %>%
    dplyr::select(all_of(c("original_name", "aligned_name", "aligned_reason", "taxon_rank"))) %>%
    dplyr::rename(all_of(c(
      "find" = "original_name",
      "replace" = "aligned_name",
      "reason" = "aligned_reason",
      "taxonomic_resolution" = "taxon_rank"
    )))
  
  traits.build::metadata_add_taxonomic_changes_list(dataset, names_aligned)
  
}
