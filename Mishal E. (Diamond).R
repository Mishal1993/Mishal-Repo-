# Diamond analysis 
# Mishal E. Alotaibi 
# 29.9.2020
# case study for EDA and stats


# load packages
library(tidyverse)

#read in the data (csv format):
#newer methods from tidyr package
jems <- read_csv("data/diamonds.csv")

#super convenient way
# library(rio)  # R i/o
# jems2 <- import("data/diamonds.csv")

#get familiar with our data 
summary(jems)
names(jems)
str(jems)
glimpse(jems)

# more detail:
attributes(jems)
typeof(jems)


jems %>% filter(clarity== "VVS2" & cut == "Good")

#exercise 8.3:


clarity <- jems %>% filter(clarity=="IF") %>%  nrow(clarity)

sum(jems$clarity == "IF")

nrow(clarity)/nrow(jems)



#Exercise 8.4

jems %>%
  group_by(clarity) %>%
  count() %>%
  mutate(prop = n/nrow(jems))

#exercise 8.5

jems %>% 
  filter(price == min(jems$price))

jems %>% 
  filter(price == range(jems$price))
 
jems %>% 
  group_by(cut,color) %>% 
  summarise(avg=mean(price))

#exercise 8.6

ggplot(jems, aes(y = price, x = carat)) +
  geom_point()

caret_log10 <- log10(jems$carat)
price_log10 <- log10(jems$price)

ggplot(jems, aes(x= caret_log10, y = price_log10)) +
  geom_point()

lm(price_log10 ~ caret_log10, data = jems)

#produce our model: (need to review more )

jems_lm <- lm(price_log10~caret_log10,data =jems)
jems_lm
#plot:
ggplot(jems, aes( x = carat_log10, y = price_log10)) + 
  geom_point() +
  geom_smooth(method = lm, se = FALSE ,colour = "red")


