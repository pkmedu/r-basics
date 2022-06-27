

setwd("C:/r-basics/Data")
load('flags.Rdata')
flags <- flags

library(tidyverse)
flags %>% dplyr:::select(name, landmass, zone)