compute_prob <- function(n, B=10000){
  same_day <- replicate(B, {
    bdays <- sample(1:365, n, replace=TRUE)
    any(duplicated(bdays))
  })
  mean(same_day)
}
n <- seq(1,60)

#vector approach
x <- 1:10
sqrt(x)

#will not work
compute_prob(n)

#will work
x <- 1:10
sapply(x, sqrt)

#our case
prob <- sapply(n, compute_prob)
plot(n, prob)


#exact probabilities instead of Monte Carlo simulations
exact_prob <- function(n){
  prob_unique <- seq(365, 365-n+1)/365
  1 - prod(prob_unique)
}
eprob <- sapply(n, exact_prob)
plot(n, prob)
lines(n, eprob, col="red")
