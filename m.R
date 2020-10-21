# Irrigation analysis 
# Mishal Eid Alotaibi
#01.10.2020
# A small case study using irrigation_wide.csv in the data directory

#load packages
library(tidyverse)

#Begin with wide "messy" format:
irrigation <- read_csv("data/irrigation_wide.csv")
  

#examine the data: 
glimpse(irrigation)
summary(irrigation)

# in 2007, what is the total area under irrigation?
# for only the americas

irrigation %>%
  filter(year==2007) %>% 
  select(ends_with("erica"))

#OR 

irrigation %>%
  filter(year==2007) %>% 
  select(`N. America`,`S. America`)


#tidy data 
 irrigation_t <- irrigation %>% 
   pivot_longer(-year, names_to = 'region')

# what is the total area under irrigation in each year?
 
 irrigation_t %>% 
   group_by(year) %>% 
   summarise(total = sum(value))
 
## what is the rate of change in each region? 
 
xx <- c(1,1.2,1.6,1.1)  
xx
 
# abs diff 
c(0,diff(xx))
(1.2-1)/(1.6-1.2)/1.2(1.1-1.6)/1.6 
irrigation_t %>%
  group_by(region) %>% 
  mutate(diff(value))


# where is it the lowest and highest?
# standardize against 1980 (rellative change over 1980)
 
 
#plot area over time for each region? 
#which region increased most from 1980 to 2007?