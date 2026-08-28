library(ggplot2)

df19_r <- data.frame(
  EmployeeID = factor(1:5),
  PerformanceScore = c(85, 92, 78, 90, 76)
)

ggplot(df19_r, aes(x = EmployeeID, y = PerformanceScore, group = 1)) +
  geom_line(color = "purple") + geom_point() +
  labs(title = "Employee Performance Comparison", x = "Employee ID", y = "Performance Score") +
  theme_minimal()