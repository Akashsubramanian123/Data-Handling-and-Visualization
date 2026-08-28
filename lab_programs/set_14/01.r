library(ggplot2)

df14_q1 <- data.frame(
  Answer = c("A", "B", "C"),
  Count = c(1, 1, 1)
)

ggplot(df14_q1, aes(x = "Q1", y = Count, fill = Answer)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Distribution of Answers for Question 1", x = "Question 1", y = "Count") +
  theme_minimal()