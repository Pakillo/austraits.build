
#' Update the remake.yml file with new studies
#' 
#' `setup_build_process` rewrites the remake.yml file to include new
#' studies
#'
#' @param template template used to build 
#' @param path path to folder with data
#' @param dataset_ids dataset_ids to icnlude. By default includes all.
#'
#' @return Updated remake.yml file 
#' @export
setup_build_process_remake <- function(
  template = readLines(system.file("support", "remake.yml.whisker", package = "austraits.build")),
  path="data",
  dataset_ids = dir(path)) {

  if(!file.exists(path)) {
    stop("cannot find data directory", path)
  }

  # check directories have both files
  has_both_files <- sapply(dataset_ids, function(id) sprintf("%s/%s/%s", path, id, c("data.csv", "metadata.yml") ) %>% file.exists() %>% all())

  dataset_ids <- dataset_ids[has_both_files]

  vals <- list(
    dataset_ids = whisker::iteratelist(dataset_ids, value="dataset_id"),
    path=path
    )

  str <- whisker::whisker.render(template, vals)
  writeLines(str, "remake.yml")
}


#' Update the remake.yml file with new studies
#'
#' `setup_build_process` rewrites the remake.yml file to include new
#' studies
#'
#' @param template template used to build
#' @param path path to folder with data
#' @param dataset_ids dataset_ids to icnlude. By default includes all.
#'
#' @return Updated remake.yml file
#' @export
setup_build_process_targets <- function(template = readLines(system.file("support", "targets.whisker", package = "austraits.build")),
                                       path = "data",
                                       dataset_ids = dir(path)) {
  if (!file.exists(path)) {
    stop("cannot find data directory", path)
  }

  # check directories have both files
  has_both_files <- sapply(dataset_ids, function(id) {
    sprintf("%s/%s/%s", path, id, c("data.csv", "metadata.yml")) %>%
      file.exists() %>%
      all()
  })

  dataset_ids <- dataset_ids[has_both_files]

  vals <- list(
    dataset_ids = whisker::iteratelist(dataset_ids, value = "dataset_id"),
    path = path
  )

  str <- whisker::whisker.render(template, vals)
  writeLines(str, "_targets.R")
}
