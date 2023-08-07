library(tidyverse)
library(dslabs)
data(heights)

x <- heights %>% filter(sex=="Male") %>% .$height
F <- function(a) mean(x<=a)
1 - F(70)


1 - pnorm(70.5, mean(x), sd(x))
plot(prop.table(table(x)), xlab = "a = Height in inches", ylab = "Pr(X = a)")

mean(x <= 68.5) - mean(x <= 67.5)
mean(x <= 69.5) - mean(x <= 68.5)
mean(x <= 70.5) - mean(x <= 69.5)

pnorm(68.5, mean(x), sd(x)) - pnorm(67.5, mean(x), sd(x))
pnorm(69.5, mean(x), sd(x)) - pnorm(68.5, mean(x), sd(x))
pnorm(70.5, mean(x), sd(x)) - pnorm(69.5, mean(x), sd(x))

# Discretization
mean(x <= 70.9) - mean(x <= 70.1)
pnorm(70.9, mean(x), sd(x)) - pnorm(70.1, mean(x), sd(x))



# Probability density
avg <- mean(x)
s <- sd(x)
1 - pnorm(76, avg, s)
# use dnorm() for probability density function for the normal distribution

# Plotting the probability density for the normal distribution
y <- seq(-4, 4, length = 100)
data.frame(y, f = dnorm(y)) %>%
  ggplot(aes(y, f)) +
  geom_line()


# Note that dnorm() gives densities for the standard normal distribution by default.
# Probabilities for alternative normal distributions with mean mu and standard deviation sigma can be evaluated with:
dnorm(z, mu, sigma)


# Monte Carlo simulations
x <- heights %>% filter(sex=="Male") %>% .$height
n <- length(x)
avg <- mean(x)
s <- sd(x)
simulated_heights <- rnorm(n, avg, s)
ds_theme_set()
data.frame(simulated_heights=simulated_heights) %>% ggplot(aes(simulated_heights)) +
  geom_histogram(color="black", binwidth = 2)

# How rare is that the tallest person is a seven footer?
B <- 10000
tallest <- replicate(B, {
  simulated_data <- rnorm(800, avg, s)
  max(simulated_data)
})
mean(tallest >= 7*12)



# Other continious distributions
x <- seq(-4, 4, length.out = 100)
data.frame(x, f = dnorm(x)) %>% ggplot(aes(x, f)) +
  geom_line()




