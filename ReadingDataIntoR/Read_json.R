
# Acknowledgements: https://www.tutorialspoint.com/r/r_json_files.htm
# Code and data obtained from the above source

# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "C:/r-basics/data/input.json")

# Print the result.
print(result)

# Convert JSON file to a data frame.
json_data_frame <- as.data.frame(result)

print(json_data_frame)