---
title: "Create_cbind"
author: "Pradip Muhuri"
date: "6/28/2022"
output: word_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}
set.seed(10)
x <- rnorm(100, 5, 2)
z <- rnorm(100, 6, 5)
w <- rnorm(100, 3, 2)
y <- x * 2 + w * 0.5 + rnorm(100, 0, 1)
ybin <- as.numeric(y < 10)

mydata <- as.data.frame(cbind(x, z, w, y, ybin))
mydata
```
