getwd()
setwd ("C:/r-basics/dput_dget")

df1 <- data.frame(
  X = sample(1:10),
  Y = sample(c("yes", "no"), 10, replace = TRUE)
)


dput(df1,file = "df1.R")

x <- dget("df1.R")
x

