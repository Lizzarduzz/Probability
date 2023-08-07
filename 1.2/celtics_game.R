# Two teams, say the Celtics and the Cavs, are playing a seven game series.
# The Cavs are a better team and have a 60% chance of winning each game.

# What is the probability that the Celtics win at least one game?
# Remember that the Celtics must win one of the first four games, or the series will be over!
p_cavs_win = 0.6
p_celtics_win = 1 - p_cavs_win

# Assign the variable `p_cavs_win4` as the probability that the Cavs will win the first four games of the series.
p_cavs_win4 = p_cavs_win^4
p_cavs_win4

# Using the variable `p_cavs_win4`, calculate the probability that the Celtics win at least one game in the first four games of the series.
p_celtics_win4 = 1 - p_cavs_win4
p_celtics_win4
