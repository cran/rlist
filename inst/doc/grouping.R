## ----, echo = FALSE, message = FALSE-------------------------------------
library(rlist)
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)

## ------------------------------------------------------------------------
devs <- 
  list(
    p1=list(name="Ken",age=24,
      interest=c("reading","music","movies"),
      lang=list(r=2,csharp=4,python=3)),
    p2=list(name="James",age=25,
      interest=c("sports","music"),
      lang=list(r=3,java=2,cpp=5)),
    p3=list(name="Penny",age=24,
      interest=c("movies","reading"),
      lang=list(r=1,cpp=4,python=2)))

## ------------------------------------------------------------------------
str(list.group(devs, age))
str(list.group(devs, length(interest)))

## ------------------------------------------------------------------------
ageGroups <- list.group(devs, age)
str(list.ungroup(ageGroups))

## ------------------------------------------------------------------------
list.cases(devs, interest)

## ------------------------------------------------------------------------
list.cases(devs, names(lang))

## ------------------------------------------------------------------------
str(list.class(devs, interest))

## ------------------------------------------------------------------------
str(list.class(devs, names(lang)))

