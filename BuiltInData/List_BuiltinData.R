data()


# The following function will give you a list of all datasets in the available 
# packages on your computer (i.e. also the not-loaded ones)

data(package = .packages(all.available = TRUE))

# Using data(package = "packagename") will give you the datasets of that 
# specific package, so data(package = "plyr") will give the datasets 
# in the plyr package 

