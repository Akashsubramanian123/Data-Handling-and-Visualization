library(ggplot2)

ggplot(df6_long, aes(x = Month, y = Sales, fill = ProductName, group = ProductName)) +
  geom_area() +
  labs(title = "Overall Sales Trend Across Q1", x = "Month", y = "Sales ($)") +
  theme_minimal()