if (!require(NLRoot)) {
  install.packages("NLRoot")
  require(NLRoot)
} # pobieranie paczki pochodnych

a <- 0 #minimum
b <- 2 #maximum

f <- function(x){
  x^3-x-1
} # definicja liczonej funkcji

BFfzero(f, a, b, num = 10, eps = 1e-05) # Bisekcja

curve(f, xlim=c(-3,3), col='blue', lwd=1.5, lty=2)
