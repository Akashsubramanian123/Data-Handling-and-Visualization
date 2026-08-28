library(ggplot2)

df13_dept <- data.frame(
  Department = c("Sales", "HR", "Marketing")
)

ggplot(df13_dept, aes(x = Department, fill = Department)) +
  geom_bar() +
  labs(title = "Employees per Department", x = "Department", y = "Count") +
  theme_minimal()