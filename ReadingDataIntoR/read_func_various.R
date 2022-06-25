


# Read a txt file, named "class.txt"
r_data_from_tdf <- read.delim("C:/r-basics/Data/class.txt")
r_data_from_tdf

# Read a csv file, named "class_csv.txt"
r_data_from_csv <- read.table("C:/r-basics/Data/class_csv.txt",
                              sep=',', header=FALSE)
r_data_from_csv


library("readxl")
r_data_from_xlsx <- readxl::read_excel("C:/r-basics/Data/class.xlsx", sheet=1)  # read first sheet
str(r_data_from_xlsx)

# Load the package required to read JSON files.
library("rjson")
# Give the input file name to the function.
r_data_from_json <- fromJSON(file = "C:/r-basics/data/class.json")
str(r_data_from_json)

# Convert JSON file to a data frame.
r_data_frame_js <- as.data.frame(r_data_from_json)
r_data_frame_js

r_data_from_web <- read.delim("http://www.sthda.com/upload/boxplot_format.txt")
r_data_from_web
