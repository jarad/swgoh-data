library("testthat")
library("tidyverse")

data_dir = "../../data/raw/"

dates <- Sys.Date()
# dates <- seq(as.Date("2019-12-03"), Sys.Date(), "days") # uncomment to test all files

files <- data.frame(
  battle = paste0(data_dir, "battles/b", format(dates, "%Y%m%d"), ".csv"),
  reward = paste0(data_dir, "rewards/r", format(dates, "%Y%m%d"), ".csv"),
  
  stringsAsFactors = FALSE
)

battle_rewards = read.csv(paste0(data_dir, "../tidy/battle_rewards.csv"))
