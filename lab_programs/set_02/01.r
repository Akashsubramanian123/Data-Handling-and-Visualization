library(ggplot2)

df2 <- data.frame(
  CustomerID = 1:5,
  Age = c(25, 30, 35, 28, 40),
  Satisfaction = c(4, 5, 3, 4, 5)
)

ggplot(df2, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "steelblue", color = "black", boundary = 20) +
  labs(title = "Distribution of Customer Ages", x = "Age", y = "Count") +
  theme_minimal()