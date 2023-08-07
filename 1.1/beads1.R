beads <- rep( c("red", "blue"), times = c(2,3)) #create an urn with 2 red beads and 3 blue ones
beads
B <- 10000 #Number of times to draw a bead
events <- replicate(B, sample(beads, 1)) #Draw 1 bead B times
tab <- table(events) # create a table of all of the events
tab
prop.table(tab) # get a probability of an event
sample(beads, 5) # draw beads without putting them back
events_1 <- sample(beads, B, replace=TRUE) # draw beads and then put them back
prop.table(table(events_1))
