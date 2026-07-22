library(ggplot2)

df2_stacked <- data.frame(
  Age_Group = c("20-30", "20-30", "31-40", "31-40"),
  Satisfaction = factor(c(4, 5, 3, 5)),
  Count = c(2, 0, 1, 1)
)

ggplot(df2_stacked, aes(x = Age_Group, fill = Satisfaction)) +
  geom_bar(position = "stack") +
  labs(title = "Satisfaction Scores by Age Group", x = "Age Group", y = "Count") +
  theme_minimal()