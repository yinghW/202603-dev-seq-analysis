library("dplyr")
options(rgl.useNULL=TRUE)
library("rgl")
library("tidyverse")
library("gtools")
library(stringr)
library(gridExtra)
library(factoextra)
library(ggplot2)
library(purrr)

#dir <- "D:/202510-dev-tif"
dir <- "/Volumes/Yinghui/202510-dev-tif"

# makes a list of all .csv files that contain landmark data
files <- list.files(paste(dir,"lm",sep="/"), 
                    pattern = "*.csv", 
                    full.names = TRUE, 
                    recursive = TRUE)


# 2. Read into a named list
data_list <- files %>% 
  set_names() %>%
  purrr::map(possibly(read_csv, otherwise = NULL))


# 3. Merge into ONE data frame with a 'source' column
combined_data <- data_list %>% 
  bind_rows(.id = "file")


combined_data <- combined_data %>%
  separate_wider_regex(
    cols = file,
    patterns = c(
      ".*/",                # Skip everything until the last few folders
      temp = "\\d+",   # CAPTURE: The digits (e.g., '18')
      "C/",
      biorep = "[A-Z]",     # Captures 'A' or 'B'
      "/",
      ind = "\\d+",         # Captures '1' through '35'
      "/",
      plane = "[^/]+",      # Captures 'OA', 'PA', or whatever is in that slot
      "/",                  # Match the last slash
      #"[^/]+",              # Match the filename but don't capture it
      date = "\\d{4}",        # CAPTURE: The 4 digits at the start of filename
      "-",                    # Match the hyphen (discard it)
      "[A-Z]{2}",             # Match the 2 letters (discard it)
      ".*"                    # Match the rest of the filename (discard it)
    ),
    cols_remove = FALSE,
    too_few = "align_start" # If a path is slightly off, it won't crash the script
  )



# tidy up and integrate the dataset
combined_data <- combined_data %>%
  dplyr::select(c(temp, biorep, ind, plane, ...1, file, X, Y)) %>% 
  rename(lm = ...1)%>%
  mutate(biorep = paste0("202510-dev-seq-", biorep))

# add the version of landmarks applied
combined_data<- combined_data  %>% mutate( ver = rep(6, times = nrow(combined_data)))

# export the dataframe as a rds file to continue work with it in R
saveRDS(combined_data, paste(dir,"202510-dev-seq-v6.rds",sep="/"))
