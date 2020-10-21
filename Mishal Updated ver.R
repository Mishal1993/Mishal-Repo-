#Name: Mishal E. Alotaibi  
#Date:10/18/2020
#Subject: Mishal - kaggle. 

#downlaod Packages:

library(tidyverse)

#Read Data:

us_disaster <- read.csv("who_suicide_statistics.csv")

head(us_disaster)

#min and max ages for suicide people 
min(us_disaster$age)
max(us_disaster$age)

