battle_details <- readr::read_csv("data/tidy/battle_details.csv",
                                  col_types = readr::cols(
                                    battle = readr::col_character(),
                                    energy = readr::col_integer()
                                  ))



battle_rewards <- readr::read_csv("data/tidy/battle_rewards.csv",
                                  col_types = readr::cols(
                                    battle = readr::col_character(),
                                    reward = readr::col_character()
                                  ))

