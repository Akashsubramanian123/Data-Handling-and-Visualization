library(ggplot2)

df18 <- data.frame(
  Month = factor(c("January", "February", "March", "April", "May"), levels = c("January", "February", "March", "April", "May")),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

ggplot(df18, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "darkgreen", size = 1) +
  geom_point(size = 2) +
  labs(title = "Monthly Sales Time Series Trend", x = "Month", y = "Sales ($)") +
  theme_minimal()