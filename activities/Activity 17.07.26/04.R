# 1. Define the dataset
waiting_time <- c(12, 15, 18, 20, 22, 24, 25, 28, 30, 32)

# 2. Generate the Normal Q-Q Plot
qqnorm(waiting_time, 
       main = "Normal Q-Q Plot of Waiting Times",
       xlab = "Theoretical Quantiles", 
       ylab = "Sample Quantiles (Minutes)",
       col = "#1F4E79", 
       pch = 19)

# 3. Add a reference line to evaluate linearity/normality
qqline(waiting_time, col = "red", lwd = 2)