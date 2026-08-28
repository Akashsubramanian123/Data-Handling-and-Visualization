library(ggplot2)
library(tidyr)

df16 <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  Stock_A = c(100, 105, 110),
  Stock_B = c(150, 152, 148),
  Stock_C = c(120, 118, 122)
)

df16_long <- pivot_longer(df16, cols = starts_with("Stock"), names_to = "Company", values_to = "Price")

ggplot(df16_long, aes(x = Date, y = Price, color = Company)) +
  geom_line(size = 1) + geom_point() +
  labs(title = "Stock Price Trends Over Time", x = "Date", y = "Stock Price ($)") +
  theme_minimal()