library(ggplot2)

df4_price <- data.frame(
  Price = c(20, 15, 18, 25, 12),
  Quantity = c(250, 175, 300, 200, 220)
)

ggplot(df4_price, aes(x = Price, y = Quantity)) +
  geom_point(color = "darkorange", size = 3) +
  labs(title = "Product Price vs Quantity Available", x = "Price ($)", y = "Quantity Available") +
  theme_minimal()
