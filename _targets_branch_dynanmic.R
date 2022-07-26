# Dynamics branching

# Load packages required to define the pipeline:
library(targets)
#library(dplyr)
options(clustermq.scheduler = "multicore")

tar_config_set(
  reporter_make = "summary"
  )

# Set target options:
tar_option_set(
  packages = c("austraits.build"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)
valid_datasets <- function(dataset_ids = dir("data")) {
  
  i <- purrr::map_lgl(dataset_ids, ~all(file.exists(sprintf("%s/%s/%s", "data", .x, c("data.csv", "metadata.yml")))))
  dataset_ids[i]
}

list(
  tar_target(schema, load_schema()),
  tar_target(file_DESCRIPTION, "DESCRIPTION", format = "file"),
  tar_target(version_number, desc_get_version(file_DESCRIPTION)),
  tar_target(git_SHA, get_SHA()),
  tar_target(file_traits, "config/traits.yml", format = "file"),
  tar_target(definitions, load_schema(file_traits, "traits")),
  tar_target(file_unit_conversions, "config/unit_conversions.csv", format = "file"),
  tar_target(unit_conversions, make_unit_conversion_functions(file_unit_conversions)),
  tar_target(file_taxon, "config/taxon_list.csv", format = "file"),
  tar_target(taxon_list, read_csv_char(file_taxon)),

  tar_target(dataset_id, valid_datasets()),
  tar_target(
    file_meta,
    sprintf("data/%s/metadata.yml", dataset_id),
    format= "file",
    pattern = map(dataset_id)
  ),
  tar_target(
    file_data,
    sprintf("data/%s/data.csv", dataset_id),
    format= "file",
    pattern = map(dataset_id)
  ),
  tar_target(
    config,
    subset_config(file_meta, definitions, unit_conversions),
    pattern = map(file_meta)
  ),
  tar_target(
    data,
    load_dataset(file_data, config, schema),
    pattern = map(file_data, config)
  )
)

