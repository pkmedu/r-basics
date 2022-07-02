test <- data.frame(vara1=1:10,varb1=2:11,vara2=3:12,varb2=4:13)
test
test[paste0("varc",1:2)] <- test[paste0("vara",1:2)]
        + test[paste0("varb",1:2)]
test

