# 1. Define the dataset
monthly_income <- c(18000, 22000, 24000, 26000, 28000, 30000, 34000, 42000, 85000, 200000)

# Set up the plotting area to show 2 plots side-by-side
par(mfrow = c(1, 2))

# 2. Plot the Histogram (displays the heavy right tail)
hist(monthly_income, 
     main = "Histogram of Income",
     xlab = "Monthly Income (₹)", 
     col = "#F8CBAD", 
     border = "#C65911")

# 3. Plot the Normal Q-Q Plot (displays the upward-bending concave curve)
qqnorm(monthly_income, 
       main = "Normal Q-Q Plot of Income",
       xlab = "Theoretical Quantiles", 
       ylab = "Sample Quantiles (₹)",
       col = "#C65911", 
       pch = 19)
qqline(monthly_income, col = "red", lwd = 2)

# Reset plotting layout layout
par(mfrow = c(1, 1))