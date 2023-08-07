library(gtools)
library(tidyverse)

medals <- c("Gold", "Silver", "Bronze")
runners <- c("j_1", "j_2", "J_3", "USA", "Ecuador", "Netherlands", "France", "South Africa")


possibilities <- permutations(length(runners), length(medals), v = runners)
nrow(possibilities)


j_runners <- c("j_1", "j_2", "j_3")
j_poss <- permutations(length(j_runners), length(medals), v = j_runners)
nrow(j_poss)
j_poss

j_win <- nrow(j_poss)/nrow(possibilities)
j_win

# The variable `B` specifies the number of times we want the simulation to run. Let's run the Monte Carlo simulation 10,000 times.
B <- 10000

# Use the `set.seed` function to make sure your answer matches the expected result after random sampling.
set.seed(1)

# Create an object called `results` that replicates for `B` iterations a simulated series and determines whether that series contains at least four wins for the Cavs.
results <- replicate(B, {
  run_list <- c("Jamaica", "Jamaica", "Jamaica", "USA", "Ecuador", "Netherlands", "France", "South Africa")
  medals <- c("Gold", "Silver", "Bronze")
  l <- sample(run_list, length(medals), replace = FALSE)
  l
  all_j_win <- c("Jamaica", "Jamaica", "Jamaica")
  any(l[1] == "Jamaica" & l[2] == "Jamaica" & l[3] == "Jamaica")
})

mean(results)
