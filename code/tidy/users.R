library("readr")
library("dplyr")
library("tidyr")

col_types <- readr::cols(
  date     = readr::col_date(format = "%Y-%m-%d"),
  userID   = readr::col_character(),
  level    = readr::col_integer(),
  power    = readr::col_integer()
)

read_users_csv = function(f, into) {
  readr::read_csv(f, col_types = col_types) %>%
    dplyr::mutate(file=f) %>%
    tidyr::separate(file, into) 
}

read_users_dir = function(path, pattern, into) {
  files = list.files(path = path,
                     pattern = pattern,
                     recursive = TRUE,
                     full.names = TRUE)
  plyr::ldply(files, read_users_csv, into = into)
}

########################################################################

users <- read_users_dir(path    = paste0(raw_dir, "users"),
                          pattern = "*.csv",
                          into    = c(
                            "data","raw",
                            "users","year","month","extension")) %>%
  
  select(date, userID, level, power)
