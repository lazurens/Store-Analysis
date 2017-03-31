# Author : Mohamed Jelidi - 2017 March
# Data Exploration – looking at categorical and continuous feature summaries and making inferences about the data. (https://www.analyticsvidhya.com/blog/2015/04/comprehensive-guide-data-exploration-r/)
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

# Initial Visualization of the data
hist(train$Sales)

hist(train$Sales, freq=FALSE, xlab="Sales", main="Distribution of Sales", col="lightblue")
curve(dnorm(x, mean=mean(train$Sales), sd=sd(train$Sales)), add=TRUE, col="darkblue", lwd=2)

# How many customers per day of week
plot(train$DayOfWeek, train$Customers)
# How many customers - promotion
plot(train$DayOfWeek, train$Customers)
# How many sales when customers
plot(train$Sales, train$Customers)
# How many customers when holiday or not
plot(train$StateHoliday, train$Customers)
plot(train$SchoolHoliday, train$Customers)

# Calculating Frequency Table
customers_frequency <- data.frame(table(train$Customers))

# Transformation and Exploration
from <- data.frame(rep("train", times = nrow(train)))
bind_rows(from,data.frame(rep("test", times = nrow(test))))
# Check the class for each column
sapply(train, class)
sapply(test, class)

test[,c("Id","DayOfWeek","Date","Sales","Customers","Open","Promo","StateHoliday","SchoolHoliday")]

nrow(from)
data <- bind_rows(train,test)
nrow(data)
data <- bind_cols(data,from)
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
