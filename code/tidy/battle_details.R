# library("readr")
# 
# battle_details <- readr::read_csv(paste0(raw_dir, "battle_details.csv"),
#                                   col_types = readr::cols(
#                                     battle = readr::col_character(),
#                                     energy = readr::col_integer()
#                                   ))

file.copy(from = paste0(raw_dir,  "battle_details.csv"),
          to   = paste0(tidy_dir, "battle_details.csv"))
