library(knitr)

df14 <- data.frame(
  Respondent = 1:3,
  Q1 = c("A", "B", "C"),
  Q2 = c("B", "A", "A"),
  Q3 = c("C", "D", "B")
)

kable(df14, caption = "Survey Response Data")