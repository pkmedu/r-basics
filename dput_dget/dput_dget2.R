
setwd('C:/r-basics')

# Example 1
dput(mtcars, file = 'df.txt')
df <- dget('df.txt')

df

Example 2

iris5 <- head(iris, 5)

#write the above R object to an ASCII text representation 
dput(iris5)

#paste it back and assign to new object      

irismre <- structure(list(Sepal.Length = c(5.1, 4.9, 4.7, 4.6, 5), Sepal.Width = c(3.5, 
3, 3.2, 3.1, 3.6), Petal.Length = c(1.4, 1.4, 1.3, 1.5, 1.4), 
Petal.Width = c(0.2, 0.2, 0.2, 0.2, 0.2), Species = structure(c(1L, 
1L, 1L, 1L, 1L), levels = c("setosa", "versicolor", "virginica"), 
class = "factor")), row.names = c(NA, 5L), class = "data.frame")

irismre