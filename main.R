# Data Exploration – looking at categorical and continuous feature summaries and making inferences about the data.
# Data Cleaning – imputing missing values in the data and checking for outliers
# Feature Engineering – modifying existing variables and creating new ones for analysis
# Model Building – making predictive models on the data

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

# Data Exploration 
# Data Cleaning 
# Feature Engineering 
# Model Building 