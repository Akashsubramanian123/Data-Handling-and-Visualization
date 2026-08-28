library(ggplot2)

df13 <- data.frame(
  EmployeeID = factor(c(1, 2, 3)),
  PerformanceScore = c(85, 92, 78)
)

ggplot(df13, aes(x = EmployeeID, y = PerformanceScore, group = 1)) +
  geom_line(color = "darkblue") + geom_point() +
  labs(title = "Employee Performance Trend", x = "Employee ID", y = "Performance Score") +
  theme_minimal()