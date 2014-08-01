## ----, echo = FALSE, message = FALSE-------------------------------------
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)
funcall <- function(fun) {
  deparse(as.call(c(substitute(fun),formals(fun))))
}

## ------------------------------------------------------------------------
x <- list(p1 = list(type="A",score=c(c1=9)),
  p2 = list(type=c("A","B"),score=c(c1=8,c2=9)),
  p3 = list(type=c("B","C"),score=c(c1=9,c2=7)),
  p4 = list(type=c("B","C"),score=c(c1=8,c2=NA)))

## ------------------------------------------------------------------------
list.search(x, all, identical, "A")

## ------------------------------------------------------------------------
list.search(x, all, identical, "A", unlist = TRUE)

## ------------------------------------------------------------------------
list.search(x, all, identical, c("A","B"))

## ------------------------------------------------------------------------
list.search(x, all, identical, c(10,8))

## ------------------------------------------------------------------------
list.search(x, all, equal, 9)

## ------------------------------------------------------------------------
list.search(x, all, equal, c(8,9))

## ------------------------------------------------------------------------
list.search(x, all, equal, c(8,9), na.rm = TRUE)

## ------------------------------------------------------------------------
list.search(x, any, equal, "A")

## ------------------------------------------------------------------------
list.search(x, any, equal, 8)

## ------------------------------------------------------------------------
list.search(x, any, equal, c(8,9))

## ------------------------------------------------------------------------
list.search(x, all, include, c(8,9))

## ------------------------------------------------------------------------
list.search(x, any, include, c(7,8,10))

## ------------------------------------------------------------------------
x <- list(
    p1 = list(name="Ken",age=24),
    p2 = list(name="Kent",age=26),
    p3 = list(name="Sam",age=24),
    p4 = list(name="Keynes",age=30),
    p5 = list(name="Kwen",age=31))

## ------------------------------------------------------------------------
list.search(x, any, like(1), "ken", unlist = TRUE)

## ------------------------------------------------------------------------
list.search(x, any, like(2), "ken", unlist = TRUE)

## ------------------------------------------------------------------------
x <- list(
    p1 = list(name=c("Ken", "Ren"),age=24),
    p2 = list(name=c("Kent", "Potter"),age=26),
    p3 = list(name=c("Sam", "Lee"),age=24),
    p4 = list(name=c("Keynes", "Bond"),age=30),
    p5 = list(name=c("Kwen", "Hu"),age=31))

## ------------------------------------------------------------------------
list.search(x, any, like(1), "Ken")

## ------------------------------------------------------------------------
list.search(x, all, unlike(2), "Ken")

## ------------------------------------------------------------------------
list.search(x, all, like(2), c("Ken","Hu"))

## ------------------------------------------------------------------------
x <- list(
    p1 = list(name=c("Ken", "Ren"),age=24),
    p2 = list(name=c("Kent", "Potter"),age=26),
    p3 = list(name=c("Sam", "Lee"),age=24),
    p4 = list(name=c("Keynes", "Bond"),age=30),
    p5 = list(name=c("Kwen", "Hu"),age=31))

## ------------------------------------------------------------------------
library(pipeR)
x %>>%
  list.filter(any(like(1)(name,"Ken"))) %>>%
  list.mapv(paste(name,collapse = " "))

