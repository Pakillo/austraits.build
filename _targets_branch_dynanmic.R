# Dynamics branching

# Load packages required to define the pipeline:
library(targets)
# library(dplyr)
# options(clustermq.scheduler = "multicore")

tar_config_set(
  reporter_make = "summary"
)

# Set target options:
tar_option_set(
  packages = c("traits.build"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)
valid_datasets <- function(dataset_ids = dir("data")) {
  i <- purrr::map_lgl(dataset_ids, ~ all(file.exists(sprintf("%s/%s/%s", "data", .x, c("data.csv", "metadata.yml")))))
  dataset_ids[i]
}

dataset_ids <- valid_datasets()

list(
  tar_target(schema, get_schema()),
  tar_target(file_DESCRIPTION, "config/metadata.yml", format = "file"),
  tar_target(version_number, util_get_version(file_DESCRIPTION)),
  tar_target(git_SHA, util_get_SHA()),
  tar_target(file_traits, "config/traits.yml", format = "file"),
  tar_target(definitions, get_schema(file_traits, "traits")),
  tar_target(file_unit_conversions, "config/unit_conversions.csv", format = "file"),
  tar_target(unit_conversions, get_unit_conversions(file_unit_conversions)),
  tar_target(schema, get_schema()),
  tar_target(file_taxon, "config/taxon_list.csv", format = "file"),
  tar_target(taxon_list, read_csv_char(file_taxon)),
  tar_target(
    file_metadata,
    sprintf("data/%s/metadata.yml", dataset_id),
    format = "file",
    pattern = map(dataset_id)
  ),
  tar_target(
    file_data,
    sprintf("data/%s/data.csv", dataset_id),
    format = "file",
    pattern = map(dataset_id)
  ),
  tar_target(
    config,
    dataset_configure(file_metadata, definitions, unit_conversions),
    pattern = map(file_metadata)
  ),
  tar_target(
    data,
    dataset_process(file_data, config, schema, resource_metadata),
    pattern = map(file_data, config)
  ),
  tar_target(
    data,
    build_update_taxonomy(data, taxon_list),
    pattern = map(data)
  )
)
