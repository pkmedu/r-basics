x <- rnorm(100, 5, 2)
z <- rnorm(100, 6, 5)
w <- rnorm(100, 3, 2)
y <- x * 2 + w * 0.5 + rnorm(100, 0, 1)

ybin <- as.numeric(y < 10)
ybin2 <- (y < 10)
xvars <- cbind(x, z, w)
mydata <- as.data.frame(cbind(x, z, w, y, ybin, ybin2))
library(Hmisc)
contents(mydata)
mydata
summary(lm(ybin ~ xvars, data = mydata))

#http://rforpublichealth.blogspot.com/2013/10/loops-revisited-how-to-rethink-macros.html
