# Created by use_targets().
# Then follow the manual to check and run the pipeline:
#   https://books.ropensci.org/targets/walkthrough.html#inspect-the-pipeline # nolint

# Load packages required to define the pipeline:
library(targets)
# library(tarchetypes) # Load other packages as needed. # nolint

# Set target options:
tar_option_set(
  packages = c("traits.build"), # packages that your targets need to run
  format = "rds" # default storage format
  # Set other options as needed.
)

# tar_make_clustermq() configuration (okay to leave alone):
options(clustermq.scheduler = "multicore")

# Replace the target list below with your own:

#   format = "feather" # efficient storage of large data frames # nolint

list(
  tar_target(schema, get_schema()),
  tar_target(file_DESCRIPTION, "DESCRIPTION", format= "file"),
  tar_target(version_number, desc_get_version(file_DESCRIPTION)),
  tar_target(git_SHA, get_SHA()),
  tar_target(file_traits, "config/traits.yml", format = "file"),
  tar_target(traits_definitions, get_schema(file_traits, "traits")),
  tar_target(unit_conversions, make_unit_conversion_functions("config/unit_conversions.csv")),
  tar_target(file_taxon, "config/taxon_list.csv", format = "file"),
  tar_target(taxon_list, read_csv_char(file_taxon))
)
