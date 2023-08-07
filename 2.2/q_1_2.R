ACT_mean = 20.9
ACT_sd = 5.7

# Real act scores are integers between 1 and 36 (ignore?)


set.seed(16, sample.kind = "Rounding")
act_scores <- rnorm(10000, ACT_mean, ACT_sd)
mean(act_scores)
sd(act_scores)

sum(act_scores >= 36)

mean(act_scores >= 30)

mean(act_scores <= 10)

x <- 1:36
f_x <- dnorm(x, 20.9, 5.7)
plot(x, f_x, type = "l")

f_z <- function(z) {
  (z - mean(act_scores))/sd(act_scores)
}
z_scores <- sapply(act_scores, f_z)
mean(z_scores >= 2)

mean(act_scores)+2*(sd(act_scores))

qnorm(0.975, mean(act_scores), sd(act_scores))


CDF <- function(value) mean(act_scores <= value)

prob_CDF <- sapply(x, CDF)
temp_df <- data.frame(x, prob_CDF)


qnorm(0.95, 20.9, 5.7)


p <- seq(0.01, 0.99, 0.01)
sample_quantiles <- quantile(act_scores, p)


theoretical_qunatiles <- qnorm(p, 20.9, 5.7)
plot(theoretical_qunatiles, sample_quantiles, col = "Black")

