# Confirm the results of the previous question with a Monte Carlo simulation 
# to estimate the probability of the Cavs winning the series after losing the first game.

# The variable `B` specifies the number of times we want the simulation to run. Let's run the Monte Carlo simulation 10,000 times.
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called `results` that replicates for `B` iterations a simulated series and determines whether that series contains at least four wins for the Cavs.
results <- replicate(B, {
  outcomes <- c(0, 1)
  n = 7-1
  l <- sample(outcomes, 6, replace = TRUE)
  any(sum(l) >= 4)
})


# Calculate the frequency out of `B` iterations that the Cavs won at least four games in the remainder of the series. Print your answer to the console.
mean(results)