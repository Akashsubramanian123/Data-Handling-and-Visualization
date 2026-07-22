library(ggplot2)

df7 <- data.frame(
  CustomerID = 1:3,
  Age = c(28, 35, 42),
  Gender = c("Female", "Male", "Female"),
  Income = c(50000, 60000, 75000)
)

ggplot(df7, aes(x = factor(CustomerID), y = Age, fill = factor(CustomerID))) +
  geom_bar(stat = "identity") +
  labs(title = "Customer Ages", x = "Customer ID", y = "Age") +
  theme_minimal()