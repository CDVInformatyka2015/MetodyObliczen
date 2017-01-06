if (!require(Deriv)) {install.packages("Deriv"); require("Deriv")} # pobieranie paczki pochodnych

f <- function(x){3*x^3+3} # definicja liczonej funkcji

error <- 0.5 # maksymalny błąd
a <- 0 # początek przedziału
b <- 4 # koniec przedziału

calka <- function(funkcja, a, b, n) {
  h <- (b-a)/n # wysokości trapezów
  x <- seq(a, b, by=h) # wyznaczenie przedziałów
  y <- funkcja(x) # wyznaczenie długości podstaw
  
  suma <- h * (y[1]/2 + sum(y[2:n]) + y[n+1]/2) # suma pól trapezów
  return(suma) # przybliżona wartość całki
}

p1 <- Deriv(f) # pierwsza pochodna
p2 <- Deriv(p1) # druga pochodna

abs.p2 <- function(p2){abs(p2)} # wartość bezwzględna

maks = optimize(abs.p2, interval=c(a, b), maximum=TRUE)$objective # maksimum
przedzialy = ceiling(sqrt(maks*(b-a)^3/12/error)) # ilość przedziałów z wzoru na błąd

wynik <- calka(f,a,b,przedzialy)
print(wynik)