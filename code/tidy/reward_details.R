# library("readr")
# 
# reward_details <- readr::read_csv(paste0(raw_dir, "reward_details.csv"),
#                                   col_types = readr::cols(
#                                     reward  = readr::col_character(),
#                                     type    = readr::col_character(),
#                                     subtype = readr::col_character()
#                                   )) %>%
#   dplyr::arrange(type, reward)

file.copy(from = paste0(raw_dir,  "reward_details.csv"),
          to   = paste0(tidy_dir, "reward_details.csv"))
