library(ggplot2)

df15_q1 <- data.frame(
  Answer = c("A", "B", "C"),
  Count = c(1, 1, 1)
)

ggplot(df15_q1, aes(x = Answer, y = Count, fill = Answer)) +
  geom_bar(stat = "identity") +
  labs(title = "Question 1 Answers", x = "Answer", y = "Count") +
  theme_minimal()