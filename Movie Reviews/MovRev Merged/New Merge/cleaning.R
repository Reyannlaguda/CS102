
library(dplyr)
library(tidyr)
library(stringr)
library(readr)
library(lubridate)
mov <- read_csv("Movie Reviews/MovRev Merged/New Merge/Merged.csv")

data_clean <- mov %>%
  mutate_if(is.character, tolower) %>%
  mutate_if(is.character, ~ str_remove_all(., '[\\x{1F600}\\x{1F64F}]'))  %>%
  mutate(date = as.POSIXct(date, format = "%d %B %Y"))

write.csv(data_clean, file = "DataClean.csv")










