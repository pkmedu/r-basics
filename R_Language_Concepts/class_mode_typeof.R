
df1 <- data.frame(tf= c(TRUE, FALSE), 
                  nume = c(45, 37.49),
                  integ = c(35L, 20L),
                  complx = c(1+2i, 0+1i),
                  char = c('CANCER', "Diarrhea"))
df1

#  tf   nume   integ complx     char
#  TRUE 45.00    35   1+2i   CANCER
# FALSE 37.49    20   0+1i Diarrhea

paste("Class of various data types") # This is a title
sapply(df1, class)

paste("mode of various data types")  # This is a title
sapply(df1, mode)

paste("typeof of various data types") # This is a title
sapply (df1, typeof)
