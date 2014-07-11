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
newinfo <-
  list(
    p1=list(name="Ken",email="ken@xyz.com"),
    p2=list(name="Penny",email="penny@xyz.com"),
    p3=list(name="James",email="james@xyz.com"))
str(list.join(devs,newinfo,name))

## ------------------------------------------------------------------------
rev1 <-
  list(
    p1=list(age=25),
    p2=list(lang=list(r=2,cpp=4)),
    p3=list(lang=list(r=2,python=NULL)))
str(list.merge(devs,rev1))

## ------------------------------------------------------------------------
rev2 <-
  list(
    p1=list(lang=list(csharp=5)),
    p2=list(age=24,lang=list(r=3)))
str(list.merge(devs,rev1,rev2))

