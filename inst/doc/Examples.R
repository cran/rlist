## ----, echo = FALSE, message = FALSE-------------------------------------
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)

## ------------------------------------------------------------------------
library(rlist)
library(pipeR)

## ------------------------------------------------------------------------
set.seed(100)
srcData <- rnorm(1000)
1:5 %>>% 
  list.map(sample(srcData,10)) %>>% 
  list.select(mean=mean(.),median=median(.)) %>>% 
  list.stack

## ------------------------------------------------------------------------
students <- '
A:
  s1:
    name: Ken
    age: 25
  s2:
    name: James
    age: 23
B:
  s3:
    name: Peter
    age: 25
  s4:
    name: Josh
    age: 24
'
students %>>%
  list.parse(type="yaml") %>>%
  list.map(f(members,,clsname) ~ members %>>% list.update(class=clsname)) %>>%
  list.ungroup %>>%
  list.stack

## ------------------------------------------------------------------------
is.prime <- function(num) {
   if (num == 2L) {
      TRUE
   } else if (any(num %% 2L:(num-1L) == 0L)) {
      FALSE
   } else { 
      TRUE
   }
}

## ------------------------------------------------------------------------
list.find(1:1000,is.prime(.),50)

## ------------------------------------------------------------------------
list.filter(1:500,is.prime(.))

