library(ggplot2)

df14_inv <- data.frame(
  ProductName = c("Product A", "Product B", "Product C"),
  Quantity = c(250, 175, 300)
)

ggplot(df14_inv, aes(x = ProductName, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Inventory Quantities", x = "Product", y = "Quantity") +
  theme_minimal()