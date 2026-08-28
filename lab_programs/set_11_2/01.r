library(ggplot2)
library(tidyr)

df11_2 <- data.frame(
  ProductName = c("Product A", "Product B", "Product C"),
  January = c(2000, 1500, 1200),
  February = c(2200, 1800, 1400),
  March = c(2400, 1600, 1100)
)

df11_2_long <- pivot_longer(df11_2, cols = c("January", "February", "March"), names_to = "Month", values_to = "Sales")

ggplot(df11_2_long, aes(x = ProductName, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "First Quarter Sales by Product", x = "Product", y = "Sales ($)") +
  theme_minimal()