# Author : Mohamed Jelidi - 2017 March
# Data Exploration – looking at categorical and continuous feature summaries and making inferences about the data.
# Data Cleaning – imputing missing values in the data and checking for outliers
# Feature Engineering – modifying existing variables and creating new ones for analysis
# Model Building – making predictive models on the data

# Data Exploration
# Data Cleaning 
# Feature Engineering 
# Model Building 

library(tidyr)
library(dplyr)
library(tibble)
# Import orginal datasets
train <- read.csv(file = "data/train.csv")
test <- read.csv(file = "data/test.csv")
store <- read.csv(file = "data/store.csv")
# Transformation and Exploration
add_column(df, from="train")
add_column(test, from="test")
data <- bind_rows(train,test)

#Read files:
#Filter categorical variables
#Exclude ID cols and source:
#Print frequency of categories

# 3- Data Cleaning
## Imputing Missing Values
#Determine the average weight per item:
#Get a boolean variable specifying missing Item_Weight values
#Impute data and check #missing values before and after imputation to confirm
#Import mode function:
#Determing the mode for each
#Get a boolean variable specifying missing Item_Weight values
#Impute data and check #missing values before and after imputation to confirm

# 4- Feature Engineering
## Consider combining Outlet_Type
## Modify Item_Visibility
#Determine another variable with means ratio
## Create a broad category of Type of Item
##Get the first two characters of ID:
#Rename them to more intuitive categories:
## Determine the years of operation of a store

# 5- Modify categories of Item_Fat_Content
#Change categories of low fat:
#Mark non-consumables as separate category in low_fat:

# 6- Numerical and One-Hot Coding of Categorical variables
#New variable for outlet

# 7- Exporting Data
#Drop the columns which have been converted to different types:
#Divide into test and train:
#Drop unnecessary columns:
#Export files as modified versions:

# Model Building
# Visualiations
# Exporting files
