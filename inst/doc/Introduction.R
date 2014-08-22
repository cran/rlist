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
str(list.filter(devs,age >= 25))

## ------------------------------------------------------------------------
list.map(devs, name)

## ------------------------------------------------------------------------
list.map(devs, sort(unlist(lang),decreasing = T)[1])

## ------------------------------------------------------------------------
str(list.select(devs,name,age))

## ------------------------------------------------------------------------
str(list.select(devs,name,score.range=range(unlist(lang))))

## ------------------------------------------------------------------------
str(list.group(devs,age))

## ------------------------------------------------------------------------
sorted <- list.sort(devs,desc(length(interest)),desc(lang$r))
list.map(sorted,name)

## ------------------------------------------------------------------------
str(list.update(devs,age=NULL,lang=NULL,nlang=length(lang)))

## ------------------------------------------------------------------------
library(pipeR)
devs %>>%
  list.filter(age <= 24) %>>%
  list.sort(desc(lang$r)) %>>%
  list.map(data.frame(name=name,r=lang$r,
    longest=max(unlist(lang)))) %>>%
  list.rbind

## ------------------------------------------------------------------------
nums <- list(a=c(1,2,3),b=c(2,3,4),c=c(3,4,5))
nums %>>%
  list.map(data.frame(min=min(.),max=max(.))) %>>%
  list.rbind
nums %>>%
  list.map(x ~ sum(x))
nums %>>%
  list.filter(x ~ mean(x)>=3)

