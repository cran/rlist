## ----, echo = FALSE, message = FALSE-------------------------------------
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)

## ------------------------------------------------------------------------
library(rlist)
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
list.order(devs, age)
list.order(devs, length(interest))
list.order(devs, desc(lang$r))
list.order(devs, max(unlist(lang)))
list.order(devs, desc(length(interest)), desc(lang$r))

## ------------------------------------------------------------------------
str(list.sort(devs, age))
str(list.sort(devs, length(interest)))
str(list.sort(devs, desc(lang$r)))
str(list.sort(devs, max(unlist(lang))))
str(list.sort(devs, desc(length(interest)), desc(lang$r)))

