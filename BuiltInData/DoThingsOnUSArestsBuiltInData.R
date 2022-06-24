
# The following site has description of most common R built-in data sets
# http://www.sthda.com/english/wiki/r-built-in-data-sets#related-articles
data(USArrests)
head(USArrests,6)
class(USArrests$Murder)
mode(USArrests$Murder)
typeof(USArrests$Murder)

class(USArrests$Assault)
typeof(USArrests$Murder)

names(USArrests)
str(USArrests)