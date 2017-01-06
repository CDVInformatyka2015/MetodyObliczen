if (!require(NLRoot)) {
  install.packages("NLRoot")
  require(NLRoot)
} # pobieranie paczki pochodnych

f <- function(x){3*x^3+3} # definicja liczonej funkcji

BFfzero(f,0,2) # Bisekcja

curve(f, xlim=c(-3,3), col='blue', lwd=1.5, lty=2)
