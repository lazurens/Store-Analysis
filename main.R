library(tidyr)
library(dplyr)
library(tibble)
# Import orginal datasets
train <- read.csv(file = "data/train.csv")
test <- read.csv(file = "data/test.csv")
store <- read.csv(file = "data/store.csv")

# Transformation and Exploration
add_column(train, from="train")
data <- bind_rows(train,test)
