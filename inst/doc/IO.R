## ----, echo = FALSE, message = FALSE-------------------------------------
knitr::opts_chunk$set(comment="#",error=FALSE,tidy=FALSE)

## ------------------------------------------------------------------------
library(rlist)

## ------------------------------------------------------------------------
df1 <- data.frame(name=c("Ken","Ashley","James"),
  age=c(24,25,23),stringsAsFactors = FALSE)
str(list.parse(df1))

## ------------------------------------------------------------------------
jsontext <- '
[{ "name": "Ken", "age": 24 },
 { "name": "Ashley", "age": 25},
 { "name": "James", "age": 23 }]'
list.parse(jsontext,type="json")

## ------------------------------------------------------------------------
yamltext <- "
p1:
  name: Ken
  age: 24
p2:
  name: Ashley
  age: 25
p3:
  name: James
  age: 23
"
list.parse(yamltext,type="yaml")

