beads <- rep( c("red", "blue"), times = c(2, 3))
X <- ifelse(sample(beads, 1) == "blue", 1, 0)
X <- ifelse(sample(beads, 1) == "blue", 1, 0)
X <- ifelse(sample(beads, 1) == "blue", 1, 0)
X


### SAMPLING MODELS ###
color <- rep( c("red", "black", "green"), times = c(18, 18, 2))
n <- 1000
X <- sample(ifelse(color=="red", -1, 1), n, replace = TRUE)
X[1:10]

X <- sample(c(-1,1), n, replace = TRUE, prob=c(9/19, 10/19))
S <- sum(X)
S

n <- 1000
B <- 10000
S <- replicate(B, {
  X <- sample(c(-1,1), n, replace = TRUE, prob = c(9/19, 10/19))
  sum(X)
})
mean(S < 0)

mean(S)
sd(S)

library(tidyverse)
s <- seq(min(S), max(S), length = 100)
normal_density <- data.frame(s = s, f=dnorm(s, mean(S), sd(S)))
data.frame(S=S) %>% ggplot(aes(S, ..density..)) +
  geom_histogram(color="black", binwidth = 10) +
  ylab("Probability") +
  geom_line(data = normal_density, mapping=aes(s,f), color="blue")



### DISTRIBUTION VS PROBABILITY DISTRIBUTIONS ###
avg <- sum(x)/length(x)
s <- sqrt((sum(x-avg)^2) / length(x))



### NOTATION OF RANDOM VARIABLES ###



### CENTRAL LIMIT THEOREM ###
B <- 10^6
X <- sample(c(-1,1), B, replace = TRUE, prob=c(9/19, 10/19))
mean(X)


n * (20-18)/38
sqrt(n) * 2 * sqrt(90)/19


mu <- n * (20-18)/38
se <- sqrt(n) * 2 * sqrt(90)/19
pnorm(0, mu, se)




