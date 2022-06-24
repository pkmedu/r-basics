
a <- 1:10; b <- a^2
save(a,b,file="c:/r-basics/Data/mydata.RData")
rm(a,b)                        # Remove (delete) objects
load("mydata.RData")           # Load data into R
tmp <- load("mydata.RData")
tmp                            # Lists names of objects in file
