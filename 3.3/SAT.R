# q 1
1/5

# q 2
# ap +b(1-p)
avg <- 1*(1/5) + (-0.25*(4/5))

# q 3
44*(1*(1/5) + (-0.25*(4/5)))

# q 4
# |b-a|*sqrt(p(1-p))
se <- sqrt(44)*abs(-0.25-1)*sqrt((1/5)*(4/5))


# q 5
1 - pnorm(8, avg, se)


# q 6
set.seed(21, sample.kind = "Rounding")

B <- 10000
S <- replicate(B, {
  X <- sample(c(1, -0.25), 44, replace = TRUE, prob = c(1/5, 4/5))
  sum(X)
})
mean(S >= 8)


# q 7
44*1*(1/4) + 0


# q 8
p <- seq(0.25, 0.95, 0.05)
scores <- sapply(p, function(v){
  score <- 1*v + 0
  mu <- 44*score
  se <- sqrt(44) * abs(-1) * sqrt(v*(1-v))
  1-pnorm(35, mu, se)
})
min(p[which(scores > 0.8)])






