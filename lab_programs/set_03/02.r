library(ggplot2)

df3 <- data.frame(
  Department = c("Sales", "HR", "Marketing", "Sales", "HR")
)

ggplot(df3, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Employee Distribution Across Departments", x = "Department", y = "Number of Employees") +
  theme_minimal()