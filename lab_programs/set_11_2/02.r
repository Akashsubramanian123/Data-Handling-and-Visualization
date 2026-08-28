library(ggplot2)

ggplot(df11_2_long, aes(x = Month, y = Sales, fill = ProductName, group = ProductName)) +
  geom_area() +
  labs(title = "Overall Sales Trend", x = "Month", y = "Sales ($)") +
  theme_minimal()