library(ggplot2)

df_products <- data.frame(
  Product = c("Product A", "Product B", "Product C", "Product D", "Product E"),
  Sales = c(45000, 38000, 29000, 22000, 18000)
)

ggplot(df_products, aes(x = reorder(Product, -Sales), y = Sales, fill = Product)) +
  geom_bar(stat = "identity") +
  labs(title = "Top-Selling Products for the Year", x = "Product Name", y = "Total Sales ($)") +
  theme_minimal()