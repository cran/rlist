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
str(list.filter(devs, age >= 25))
str(list.filter(devs, "sports" %in% interest))
str(list.filter(devs, mean(as.numeric(lang)) >= 3))

## ------------------------------------------------------------------------
str(list.filter(devs, .i %% 2==0))

## ------------------------------------------------------------------------
list.find(devs, age >= 25, 1)

## ------------------------------------------------------------------------
list.findi(devs, age >= 23, 2)

## ------------------------------------------------------------------------
list.takeWhile(devs, lang$r >= 2)

## ------------------------------------------------------------------------
list.skipWhile(devs, lang$r <= 2)

## ------------------------------------------------------------------------
list.if(devs, "music" %in% interest)
list.if(devs, "java" %in% names(lang))

## ------------------------------------------------------------------------
list.which(devs, "music" %in% interest)
list.which(devs, "java" %in% names(lang))

## ------------------------------------------------------------------------
list.all(devs, mean(as.numeric(lang)) >= 3)
list.all(devs, "r" %in% names(lang))

## ------------------------------------------------------------------------
list.any(devs, mean(as.numeric(lang)) >= 3)
list.any(devs, "python" %in% names(lang))

## ------------------------------------------------------------------------
list.count(devs, mean(as.numeric(lang)) >= 3)
list.count(devs, "r" %in% names(lang))

## ------------------------------------------------------------------------
list.match(devs, "p[12]")

## ------------------------------------------------------------------------
list.remove(devs, c("p1","p2"))
list.remove(devs, c(2,3))

## ------------------------------------------------------------------------
list.exclude(devs, "sports" %in% interest)

## ------------------------------------------------------------------------
subset(devs,age>=24,name)
subset(devs,"reading" %in% interest, sum(as.numeric(lang)))

