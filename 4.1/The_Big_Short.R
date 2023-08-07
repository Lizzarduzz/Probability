n <- 1000
loss_per_foreclosure <- -200000
p <- 0.02
defaults <- sample( c(0,1), n, prob=c(1-p, p), replace = TRUE)
sum(defaults *loss_per_foreclosure)

B <- 10000
losses <- replicate(B, {
  defaults <- sample( c(0,1), n, prob=c(1-p, p), replace = TRUE)
  sum(defaults *loss_per_foreclosure)
})

data.frame(losses_in_millions = losses/10^6) %>% ggplot(aes(losses_in_millions)) + geom_histogram(binwidth = 0.6, col = "black")

# CLT
n*(p*loss_per_foreclosure + (1-p)*0)
sqrt(n)*abs(loss_per_foreclosure)*sqrt(p*(1-p))


- loss_per_foreclosure*p/(1-p)


qnorm(0.01)


l <- loss_per_foreclosure
z <- qnorm(0.01)
x <- -l*(n*p - z*sqrt(n*p*(1-p))) / (n*(1-p) + z*sqrt(n*p*(1-p)))
x


loss_per_foreclosure*p + x*(1-p)


B <- 10000
profit <- replicate(B, {
  draws <- sample( c(x, loss_per_foreclosure), n,
                   prob=c(1-p,p), replace = TRUE)
  sum(draws)
})
mean(profit)
mean(profit<0)




### Part 2 ###
p <- .04
loss_per_foreclosure <- -200000
r <- 0.05
x <- r*180000
loss_per_foreclosure*p + x*(1-p)


z <- qnorm(0.01)
n <- ceiling( (z^2*(x-l)^2*p*(1-p))/(l*p + x*(1-p))^2)
n


n*(loss_per_foreclosure*p + x*(1-p))


p <- 0.04
x <- 0.05*180000
profit <- replicate(B, {
  draws <- sample( c(x, loss_per_foreclosure), n,
                   prob=c(1-p, p), replace=TRUE)
  sum(draws)
})
mean(profit<0.01)


p <- 0.04
x <- 0.05*180000
profit <- replicate(B, {
  new_p <- 0.04 + sample(seq(-0.01, 0.01, length = 100), 1)
  draws <- sample( c(x, loss_per_foreclosure), n,
                   prob=c(1-new_p, new_p), replace=TRUE)
  sum(draws)
})
mean(profit)
mean(profit<0)
mean(profit < -10000000)



