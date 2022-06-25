setwd("C:/r-basics/Data")
getwd()


load ("class_x.rdata")
class <-class_x

class <- within(class, { gender_fac1 <- factor(sex,levels=c ('M','F'),
                                           labels=c('Male', 'Female'))                                   
})


class$gender_fac2 <- factor(class$sex, labels=c('Male Student', 'Female Student'))

class[order(class$gender_fac1), ]

library(Hmisc)
contents(class)
