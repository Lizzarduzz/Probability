# `p` is defined as the probability of choosing a cyan ball from a box containing: 3 cyan balls, 5 magenta balls, and 7 yellow balls.
# Using variable `p`, calculate the probability of choosing any ball that is not cyan from the box
balls <- rep(c("cyan", "magenta", "yellow"), times = c(3,5,7))
p <- mean(balls == "cyan")
pr_my <- 1 - p
pr_my
