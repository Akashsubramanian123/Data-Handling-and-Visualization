library(ggplot2)

df16$Stock_A_PctChange <- c(0, diff(df16$Stock_A) / head(df16$Stock_A, -1) * 100)

ggplot(df16, aes(x = as.character(Date), y = Stock_A_PctChange, fill = Stock_A_PctChange > 0)) +
  geom_bar(stat = "identity") +
  labs(title = "Daily Percentage Change for Stock A", x = "Date", y = "Change (%)") +
  theme_minimal()