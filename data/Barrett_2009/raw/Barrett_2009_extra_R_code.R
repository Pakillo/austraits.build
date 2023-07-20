
library(tidyverse)
library(rquery)

data1 <- read_csv("data/Barrett_2009/raw/extracted_Barrett_table1_manual_edits.csv")
data2 <- read_csv("data/Barrett_2009/raw/extracted_Barrett_table2_manual_edits.csv")

data <- data1 %>% natural_join(data2, by = c("species", "fire_response"), jointype = "FULL")

# Remove duplicate data
data <-
  data %>%
  distinct(across(-c(page, conservation_code)), .keep_all = TRUE)

data %>% write_csv("data/Barrett_2009/data.csv")
