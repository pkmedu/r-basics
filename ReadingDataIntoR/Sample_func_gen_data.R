# generate data to create a data frame
i.data1 <- data.frame(sample (0:1, size=1000, replace=T)) 
head(i.data1)

sum_col <- as.matrix(sum(i.data1))
rownames(sum_col) <- "sum-of-col"
sum_col

