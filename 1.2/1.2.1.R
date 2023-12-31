number <- "Three"
suit <- "Hearts"
paste(number, suit)

paste(letters[1:5], as.character(1:5))

expand.grid(pants = c("blue", "black"), shirt = c("white", "grey", "plaid"))

suits <- c("Diamonds", "Clubs", "Hearts", "Spades")
numbers <- c("Ace", "Deuce", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King")
deck <- expand.grid(number=numbers, suit=suits)
deck <- paste(deck$number, deck$suit)

kings <- paste("King", suits)
mean(deck %in% kings)

library(gtools)
permutations(5,2)

all_phone_numbers <- permutations(10, 7, v = 0:9)
n <- nrow(all_phone_numbers)
index <- sample(n, 5)
all_phone_numbers[index,]

hands <- permutations(52, 2, v=deck)
first_card <- hands[,1]
second_card <- hands[,2]

#check how many cases have a first card that is a king
sum(first_card %in% kings)
sum(first_card %in% kings & second_card %in% kings) / sum(first_card %in% kings)
mean(first_card %in% kings & second_card %in% kings) / mean(first_card %in% kings)

combinations(3,2)

# Compute the probability of a natural 21 in blackjack
aces <- paste("Ace", suits)

facecard <- c("King", "Queen", "Jack", "Ten")
facecard <- expand.grid(number=facecard, suit=suits)
facecard <- paste(facecard$number, facecard$suit)

hands <- combinations(52, 2, v=deck)
mean(hands[,1] %in% aces & hands[,2] %in% facecard)

mean((hands[,1] %in% aces & hands[,2] %in% facecard) | (hands[,2] %in% aces & hands[,1] %in% facecard))

hand <- sample(deck, 2)
hand

B <- 10000
results <- replicate(B, {
  hand <- sample(deck, 2)
  (hand[1] %in% aces & hand[2] %in% facecard) |
    (hand[2] %in% aces & hand[1] %in% facecard)
})
mean(results)

