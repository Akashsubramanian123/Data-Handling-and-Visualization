library(ggplot2)

df4 <- data.frame(
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity = c(250, 175, 300, 200, 220)
)

ggplot(df4, aes(x = ProductName, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Inventory Quantity Available by Product", x = "Product Name", y = "Quantity Available") +
  theme_minimal()