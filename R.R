install.packages("NLRoot")

library("NLRoot", lib.loc="~/R/win-library/3.3")
require(NLRoot)

f <- function(x) {
  x^3-x-1
};

BFfzero(f,0,2)
