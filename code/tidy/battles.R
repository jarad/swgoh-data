library("dplyr")
library("tidyr")

col_types <- cols(
  battleID = col_integer(),
  userID   = col_integer(),
  battle   = col_character(),
  n_sims   = col_integer()
)

my_read_csv = function(f, into) {
  readr::read_csv(f, col_types = col_types) %>%
    dplyr::mutate(file=f) %>%
    tidyr::separate(file, into) 
}

read_dir = function(path, pattern, into) {
  files = list.files(path = path,
                     pattern = pattern,
                     recursive = TRUE,
                     full.names = TRUE)
  plyr::ldply(files, my_read_csv, into = into)
}

########################################################################
  
battles <- read_dir(path    = paste0(raw_dir, "battles"),
                    pattern = "*.csv",
                    into    = c("data","raw",
                                "battles","date","extension")) %>%

  dplyr::mutate(
    date     = substring(date,2),
    battleID = paste0(date, "-",
                      formatC(battleID, width = 3, flag = "0")),
    date     = as.Date(date, format = "%Y%m%d"),
    userID   = as.character(userID),

    simulated = n_sims != 0,
    attempts  = n_sims * (n_sims > 0) + 1 * (n_sims == 0),
    attempts  = as.integer(attempts)) %>%

  dplyr::select(date, battleID, userID, battle, attempts, simulated)

readr::write_csv(battles, paste0(tidy_dir, "battles.csv"))
  