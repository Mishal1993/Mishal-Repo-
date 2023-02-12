#Name: Mishal E. Alotaibi  
#Date:02/13/2023
#Subject: Mishal - kaggle. 

# data source: https://www.kaggle.com/szamil/who-suicide-statistics

# load packages
library(tidyverse)


#Read Data:
who <- read.csv("data/who_suicide_statistics.csv")

## What are the kinds of questions we can answer with this dataset?

# Suicide by country and year, has there been a change

# Can we add more variables to this data that are not present?
# What about GDP of each country?
# What about historcial events? Did the suicide rate in eastern european countries rise after the fall of communism?
# After chernobyl? what about in Japan after Fukushima?

glimpse(who)
library(gapminder)
glimpse(gapminder)

# First make sure each column is the same type. convert factor to character, or the other way around
who <- who %>% 
  mutate(country = as.factor(country))

# now merge together..


# is there any way to predict risk of suicide? i.e. other data...




