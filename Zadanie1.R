if (!require(NLRoot)) {
  install.packages("NLRoot")
  require(NLRoot)
} # pobieranie paczki pochodnych

a <- -5 # początek przedziału
b <- 2 # koniec przedziału

f <- function(x){3*x^3+3} # definicja liczonej funkcji

if (f(a)*f(b)<0) {
  BFfzero(f,a,b) # bisekcja
} else {
  print("Zalozenie o przeciwnych znakach nie jest spelnione! Wybierz inny przedzial.")
}
curve(f, xlim=c(a,b), col='blue', lwd=1.5, lty=2) # wykres
