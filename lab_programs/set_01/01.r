library(ggplot2)

df1 <- data.frame(
  Month = factor(c("January", "February", "March", "April", "May"), levels = c("January", "February", "March", "April", "May")),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

ggplot(df1, aes(x = Month, y = Sales, group = 1)) +
  geom_line(color = "blue", size = 1) +
  geom_point(color = "red", size = 3) +
  labs(title = "Monthly Sales Trend", x = "Month", y = "Sales (in $)") +
  theme_minimal()