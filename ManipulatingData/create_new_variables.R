
setwd ("C:/r-basics/Data")
load("class_x.rdata")

t_class_x <- class_x
names(t_class_x)

library (Hmisc)
contents(t_class_x)

library(tidyverse)

# Create new variables
class <- t_class_x %>% 
  mutate(male_dummy = case_when(sex=="M" ~ 1,
                                sex=="F"~ 0),
         weight_cat=case_when((weight <= 100)      ~ '<=100',
                   (weight > 100) & (weight <= 115) ~ '100-115',
                   (weight > 115)               ~ '116+'),
         
         female_dummy = if_else(sex=='F', 1,0),
         age_cat= cut(age, breaks=c(11, 12, 13, 14, 16),
                      labels=c("11-12", "12-13", "14-15", "15-16"),
                  include.lowest=TRUE, stringsAsFactors = FALSE)
                ) 

   table(class$weight_cat)
   
  table(class$male_dummy)
  table(class$female_dummy)
  table(class$age_cat)
  
