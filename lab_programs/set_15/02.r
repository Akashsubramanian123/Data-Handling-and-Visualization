library(ggplot2)
library(tidyr)

df15 <- data.frame(
  SurveyID = 1:3,
  Q1 = c("A", "B", "C"),
  Q2 = c("B", "A", "A"),
  Q3 = c("C", "D", "B")
)

df15_long <- pivot_longer(df15, cols = starts_with("Q"), names_to = "Question", values_to = "Response")

ggplot(df15_long, aes(x = Question, fill = Response)) +
  geom_bar(position = "stack") +
  labs(title = "Overall Response Distribution", x = "Question", y = "Count") +
  theme_minimal()