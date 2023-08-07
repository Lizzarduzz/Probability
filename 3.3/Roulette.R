# q 1
win <- 6
lose <- -1
total <- 38
win_cond <- 5
n <- 500

win_p <- win_cond/total
lose_p <- 1 - win_p
mu <- win*win_p + lose*lose_p

# q 2
sigma <- abs(lose-win)*sqrt(win_p*lose_p)
sigma/sqrt(n)


# q 3
n*mu


# q 4
sqrt(n)*sigma


# q 5
pnorm(0, mu*n, sigma*sqrt(n))
