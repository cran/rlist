## ----, echo = FALSE, message = FALSE-------------------------------------
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)

## ------------------------------------------------------------------------
library(rlist)

## ------------------------------------------------------------------------
x <- list(a=list(x=1,y=2),b=list(x=2,y=3))
list.map(x,y)
list.map(x,sum(as.numeric(.)))

## ------------------------------------------------------------------------
x <- list(a=list(x=1,y=2),b=list(x=2,y=3))
list.map(x, f(item,index) ~ unlist(item) * index)
list.map(x, f(item,index,name) ~ list(name=name,sum=sum(unlist(item))))

## ------------------------------------------------------------------------
x <- list(a=c(1,2),b=c(3,4))
list.map(x,sum(.))
list.map(x,item ~ sum(item))
list.map(x,f(m,i) ~ m+i)

## ------------------------------------------------------------------------
x <- list(a=c(x=1,y=2),b=c(x=3,y=4))
list.map(x,sum(y))
list.map(x,x*y)
list.map(x,.i)
list.map(x,x+.i)
list.map(x,f(.,i) ~ . + i)
list.map(x,.name)

