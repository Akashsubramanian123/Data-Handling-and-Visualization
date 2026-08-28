library(ggplot2)

df14_cat <- data.frame(
  Category = c("Category 1", "Category 1", "Category 2"),
  ProductName = c("Product A", "Product B", "Product C"),
  Quantity = c(250, 175, 300)
)

ggplot(df14_cat, aes(x = Category, y = Quantity, fill = ProductName)) +
  geom_bar(stat = "identity") +
  labs(title = "Product Category Quantities", x = "Category", y = "Quantity") +
  theme_minimal()