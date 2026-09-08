#measuring ICC of all ratings
library(rio)
library(dplyr)
library(psych)
all_ratings <- import("raw_data/Rep01_ratings.xlsx")
strength_all_ratings <- all_ratings %>% select(starts_with("num_strengths_"))
weak_all_ratings <- all_ratings %>% select(starts_with("num_weaks_"))
ICC(strength_all_ratings)
ICC(weak_all_ratings)
