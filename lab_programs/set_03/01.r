library(ggplot2)

df3_time <- data.frame(
  Year = rep(2021:2023, each = 5),
  EmployeeID = factor(rep(1:5, 3)),
  Score = c(80, 88, 75, 85, 72, 82, 90, 76, 88, 74, 85, 92, 78, 90, 76)
)

ggplot(df3_time, aes(x = Year, y = Score, color = EmployeeID, group = EmployeeID)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Employee Performance Trend Over Time", x = "Year", y = "Performance Score") +
  theme_minimal()