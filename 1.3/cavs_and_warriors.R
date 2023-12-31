# Two teams, say the Cavs and the Warriors, are playing a seven game championship series.
# The first to win four games wins the series.
# The teams are equally good, so they each have a 50-50 chance of winning each game. 

# If the Cavs lose the first game, what is the probability that they win the series?


# Assign a variable 'n' as the number of remaining games.
n = 7-1
games <- c(1:6)
# Assign a variable `outcomes` as a vector of possible game outcomes, where 0 indicates a loss and 1 indicates a win for the Cavs.
outcomes <- c(0, 1)

# Assign a variable `l` to a list of all possible outcomes in all remaining games. Use the `rep` function on `list(outcomes)` to create list of length `n`.
l <- rep(sample(list(outcomes), n, replace = TRUE))
l
# Create a data frame named 'possibilities' that contains all combinations of possible outcomes for the remaining games.
possibilities <- expand.grid(match = sample(l))
possibilities
# Create a vector named 'results' that indicates whether each row in the data frame 'possibilities' contains enough wins for the Cavs to win the series.
results <- c(rowSums(possibilities) >= 4)
results

# Calculate the proportion of 'results' in which the Cavs win the series. Print the outcome to the console.
sum(results)/length(results)