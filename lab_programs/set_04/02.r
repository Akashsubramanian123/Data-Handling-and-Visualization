library(ggplot2)

df4_cat <- data.frame(
  Category = c("Electronics", "Electronics", "Clothing", "Clothing", "Appliances"),
  ProductName = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Quantity = c(250, 175, 300, 200, 220)
)

ggplot(df4_cat, aes(x = Category, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Product Quantity Within Categories", x = "Product Category", y = "Quantity Available") +
  theme_minimal()