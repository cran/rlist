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
list.map(devs, age)

## ------------------------------------------------------------------------
list.map(devs, sum(as.numeric(lang)))

## ------------------------------------------------------------------------
list.map(devs, list(age=age,range=range(as.numeric(lang))))

## ------------------------------------------------------------------------
list.mapv(devs, age)
list.mapv(devs, sum(as.numeric(lang)))
list.mapv(devs, range(as.numeric(lang)))

## ------------------------------------------------------------------------
list.select(devs, name, age)
list.select(devs, name, age, nlang=length(lang))

## ------------------------------------------------------------------------
list.iter(devs, cat(name,":",age,"\n"))

