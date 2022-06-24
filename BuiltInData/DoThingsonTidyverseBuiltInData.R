
# https://r4ds.had.co.nz/tidy-data.html

library(tidyverse)
table1
table2
table3
table4a
table4b

# Visualise changes over time
library(ggplot2)
ggplot(table1, aes(year, cases)) + 
  geom_line(aes(group = country), colour = "grey50") + 
  geom_point(aes(colour = country))
