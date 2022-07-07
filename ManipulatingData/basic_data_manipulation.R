library(ISwR)
attach(stroke)


names(stroke)

#######################################################
#
#
#
#
#
######################################################
is.data.frame(stroke)
stroke$age  # extract a single variable (indexing part of the data frame)
stroke[, "age"]  # equivalent to the previous one (indexing part of the data frame, array, list)
stroke[1:5, 1:3] # extract selected rows and selected column numbers
stroke[c(12, 20, 505), ] # extract selected rows and all columns

age_ordered <- stroke[order(stroke$age), ] # order the data frame

names(age_ordered)

head(stroke) 

stroke[age_ordered$age>80, c("age", "dgn", "coma", "diab")] # extract using the conditional logic 

age_ordered[age_ordered$age>80, c("age", "dgn", "coma", "diab")] # extract using the conditional logic 

nrow(stroke)
sum(is.na(stroke$diab)) # How to count the number of rows with NA's ('diab' column) in the data frame

sum(stroke$diab == 'Yes', na.rm=TRUE) # How to count the number of rows with 'Yes'  ("diab" column) in the data frame

sum(stroke$diab == 'No', na.rm=TRUE) # How to count the number of rows with 'No' ("diab" column) in the data frame

table(stroke$diab)    # frequency table
table(stroke['diab']) #  equivalent to the previous one - how to count the number of occurrences in a column

ls()

rm(list = ())
