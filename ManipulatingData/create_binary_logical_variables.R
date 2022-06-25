
library(dplyr)

# Create a data frame
df1 <- data.frame(sex= c('Male','Female', 'Male', 'Female'), num = c(1,2,3,4) )
df1

# Create a 1/0 variable from a chatracter variable (Male/Female)
df1$is_male <- (df1$sex %in% 'Male')*1

# Create a logical variable (RUE/FALSE) from a chatracter variable (Male/Female)
df2 <-  within(df1, (is_male = sex %in% 'Male')*1 )

# Create a 1/0 variable from a character variable (Male/Female)
df3 <- mutate(df1, is_male = (sex %in% 'Male')*1)

data.frame(df1$is_male, df2$is_male,  df3$is_male)