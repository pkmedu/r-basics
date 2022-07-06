library(ISwR)
attach(stroke)
some_object <- as.data.frame(table(cut(age, c(1, 29, 49, 64, 96))))
some_object
ls()
search()
rm(list = ls() )
