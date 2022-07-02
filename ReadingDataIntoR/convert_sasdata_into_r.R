setwd("C:/Data")
library(sas7bdat)
#'read' function from the sas7bdat package
class_r <- read.sas7bdat("c:/Data/class1.sas7bdat")
names(class_r) <- tolower(names(class_r))
save(class, file = 'class_r.Rdata')
rm ('class_r.Rdata')
