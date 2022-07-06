library(ISwR)
attach(stroke)


names(stroke)

stroke$age  # extract a single variable
stroke[, "age"]  # equivalent to the previous one
stroke[1:5, 1:3] # extract selected rows
age_ordered <- order(stroke$age) # order the data frame
stroke[age_ordered[1:5],] # extract selected rows from the ordered data frame

stroke[age_ordered$age>80, c("age", "dgn", "coma", "diab")] # extract using the conditional logic 

ls()

rm(list = ())
