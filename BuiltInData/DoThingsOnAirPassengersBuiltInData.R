

# Acknowledgements:
# http://rstudio-pubs-static.s3.amazonaws.com/311446_08b00d63cc794e158b1f4763eb70d43a.html

# The AirPassenger dataset in R provides monthly totals of a 
# US airline passengers, from 1949 to 1960. 

# This dataset is already of a time series class.
# Therefore no further class or date manipulation is required.

data(AirPassengers) # Loads the built-in data

str(AirPassengers) # Find the internal data structure




head(AirPassengers)  # Inspect the data set:
  
AP <- AirPassengers

class(AP)

# Take a look at the entries
AP

# Check the frequency of the time series
frequency(AP)

# Check the cycle of the time series
cycle(AP)

# Plot the raw data using the base plot function
plot(AP,xlab="Date", ylab = "Passenger numbers (1000's)", 
     main="Air Passenger numbers from 1949 to 1961")







