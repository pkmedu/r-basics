set.seed(22)
product1 <- sample(30:50, 100, replace = TRUE)
product2 <- sample(40:60, 100, replace = TRUE)
product3 <- sample(35:48, 100, replace = TRUE)

sales <- as.data.frame(cbind(product1, product2, product3))
head(sales)

sales

sales$product1Met <- ifelse(sales$product1 >= 45, 1, 0)
sales$product2Met <- ifelse(sales$product2 >= 45, 1, 0)
sales$product3Met <- ifelse(sales$product3 >= 45, 1, 0)

head(sales)
#https://tnctsi.uthsc.edu/2019/02/05/equivalent-of-sas-macros-in-r-loops-and-functions-by-courtney-gale/
https://tnctsi.uthsc.edu/2019/02/05/equivalent-of-sas-macros-in-r-loops-and-functions-by-courtney-gale/
  
  
  https://www.r-bloggers.com/2019/01/parallelize-a-for-loop-by-rewriting-it-as-an-lapply-call/