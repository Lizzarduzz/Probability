entrees <- c("entree_1", "entree_2", "entree_3", "entree_4", "entree_5", "entree_6")
sides <- c("side_1", "side_2", "side_3", "side_4", "side_5", "side_6")
drinks <- c("drink_1", "drink_2")

# q 1
combinations(6, 2)
length(entrees)*15*length(drinks)


# q 2
6*15*3


# q 3
combinations(6, 3)
6*3*20


# q 4
f <- function(entree){
  print(15*3*entree)
}

x <- seq(1:12)
final <- sapply(x, f)


# q 5
f_sides <- function(side){
  print(6*3*nrow(combinations(side, 2)))
}

y <- 6:12
final <- sapply(y, f_sides)

