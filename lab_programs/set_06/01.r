library(ggplot2)
library(tidyr)

df6 <- data.frame(
  ProductName = c("Product A", "Product B", "Product C"),
  January = c(2000, 1500, 1200),
  February = c(2200, 1800, 1400),
  March = c(2400, 1600, 1100)
)

df6_long <- pivot_longer(df6, cols = c("January", "February", "March"), names_to = "Month", values_to = "Sales")
df6_long$Month <- factor(df6_long$Month, levels = c("January", "February", "March"))

ggplot(df6_long, aes(x = ProductName, y = Sales, fill = Month)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Q1 Product Sales Comparison", x = "Product", y = "Sales ($)") +
  theme_minimal()