?read.csv
# Read a csv file, named "class_csv.txt"

class <- read.csv("C:/r-basics/Data/class_csv.txt", sep=',',
                   stringsAsFactors = TRUE)
colnames(class) <- c('name','sex','age', 'height', 'weight')
rownames(class) <- NULL
save (class, file= "C:/r-basics/Data/class.rdata")


load("C:/r-basics/Data/class.rdata")
t_class <- class
print(t_class, row.names = FALSE)


# Read a txt file, named "class.txt"
class_x <- read.delim("C:/r-basics/Data/class.txt",
                              header=TRUE, as.is=TRUE)

names(class_x) <- tolower(names(class_x))
save (class_x, file= "C:/r-basics/Data/class_x.rdata")

load("C:/r-basics/Data/class_x.rdata")
t_class_x <- class_x
t_class_x

rm(list = ls() )
