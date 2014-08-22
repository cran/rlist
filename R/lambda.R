.lambda <- list(expr=NULL,symbols=c(".",".i",".name"))
.nsymbol <- length(.lambda$symbols)
.nfsymbol <- 2L + .nsymbol

lambda <- function(expr) {
  .lambda$expr <- expr
  if(is.call(expr) && length(expr[[1L]])==1L) {
    symbol <- as.character(expr[[1L]])
    if(symbol == "<-") {
      warning("lambda expression of the form \"x -> expr\" has been deprecated, please use \"x ~ expr\" instead.", call. = FALSE)
      symbols <- expr[[3L]]
      .lambda$expr <- expr[[2L]]
    } else if(symbol == "~") {
      if(length(expr) != 3L)
        stop("Invalid lambda expression", call. = FALSE)
      symbols <- expr[[2L]]
      .lambda$expr <- expr[[3L]]
    } else return(.lambda)
    if(is.name(symbols))
      .lambda$symbols[1L] <- as.character(symbols)
    else if(is.call(symbols)) {
      symbols <- as.character(symbols)[-1L]
      indices <- which(symbols != "")
      .lambda$symbols[indices] <- symbols[indices]
    } else stop("Invalid lambda expression", call. = FALSE)
  }
  .lambda
}