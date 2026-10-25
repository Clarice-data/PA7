# gardener_statistics.R
# Clarice Landman-Montano
# 10/25/2026
# Determine probability, z-scores, and percentiles of grass

# Normal distribution parameters
mean_value <- 10
variance <- 2
sd_value <- sqrt(variance)

# Find probability from 9.5 and 11 mm

between_prob <- pnorm(q = 11, mean = mean_value, sd = sd_value) - 
  pnorm(q = 9.5, mean = mean_value, sd = sd_value)

cat("Probability blade is between 9.5 and 11 mm:", between_prob, "\n")

# Calculate Z-scores and verify probability
z_lower <- (9.5 - mean_value) / sd_value
z_upper <- (11 - mean_value) / sd_value

prob_from_z <- pnorm(q = z_upper) - 
  pnorm(q = z_lower)

cat("Probability from Z-scores for 9.5 and 11 mm:", prob_from_z, "\n")

# Find the blade length below the shortest 2.5%

shortest_2_5_pct <- qnorm(p = .025, mean = mean_value, sd = sd_value)

cat("Blade length below shortest 2.5%:", shortest_2_5_pct, "mm\n")

# Standardize the 2.5th percentile
shortest_z_score <- (shortest_2_5_pct - mean_value) / sd_value

cat("Z-score of shortest 2.5% blade:", shortest_z_score, "\n")
