library("dplyr")

reward_details <- readr::read_csv("data/tidy/reward_details.csv",
                                  col_types = readr::cols(
                                    reward  = readr::col_character(),
                                    type    = readr::col_character(),
                                    subtype = readr::col_character()
                                  )) %>%
  arrange(type, reward)
