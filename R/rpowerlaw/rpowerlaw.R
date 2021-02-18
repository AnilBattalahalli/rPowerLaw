foo <- function(xmin, alpha){
  u <- runif(1,0,1)
  return(xmin*((1-u)^(1/(1-alpha))))
}

generate <- function(n, xmin, alpha){
  return(as.numeric(replicate(n, foo(xmin, alpha), simplify=FALSE)))
}

getCumulative <- function(x, xmin, alpha){
  return(1-((x/xmin)^(1-alpha)))
}