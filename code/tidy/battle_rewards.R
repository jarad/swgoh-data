library("readr")

battle_rewards <- readr::read_csv(paste0(raw_dir, "battle_rewards.csv"),
                                  col_types = readr::cols(
                                    battle = readr::col_character(),
                                    reward = readr::col_character()
                                  ))

file.copy(from = paste0(raw_dir,  "battle_rewards.csv"),
          to   = paste0(tidy_dir, "battle_rewards.csv"))
