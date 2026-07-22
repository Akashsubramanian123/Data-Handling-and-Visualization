# 1. Define the dataset
purchase_amount <- c(250, 300, 320, 350, 380, 450, 520, 650, 1800, 5200)

# Set up the plotting area to show 2 plots side-by-side
par(mfrow = c(1, 2))

# 2. Generate the Histogram (using probability = TRUE to match density scale)
hist(purchase_amount, 
     prob = TRUE,
     main = "Histogram of Purchases",
     xlab = "Purchase Amount (₹)", 
     col = "#BDD7EE", 
     border = "#1F4E79")

# 3. Generate the Density Plot
plot(density(purchase_amount), 
     main = "Density Plot of Purchases",
     xlab = "Purchase Amount (₹)", 
     col = "#C00000", 
     lwd = 2)
polygon(density(purchase_amount), col = rgb(192, 0, 0, 0.2, maxColorValue = 255), border = NA)

# Reset plotting layout layout
par(mfrow = c(1, 1))