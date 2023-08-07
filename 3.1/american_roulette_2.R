# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# The variables 'green', 'black', and 'red' contain the number of pockets for each color
green <- 2
black <- 18
red <- 18

# Assign a variable `p_green` as the probability of the ball landing in a green pocket
p_green <- green / (green+black+red)

# Assign a variable `p_not_green` as the probability of the ball not landing in a green pocket
p_not_green <- (black+red)/(green+black+red)

# Create a model to predict the random variable `X`, your winnings from betting on green. Sample one time.
n = 1
X <- sample(c(17, -1), n, replace = TRUE, prob = (c(p_green, p_not_green)))

# Print the value of `X` to the console
X
