library(ggplot2)

df5 <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  PageViews = c(1500, 1600, 1400, 1650, 1800),
  CTR = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

ggplot(df5, aes(x = Date, y = PageViews)) +
  geom_line(color = "darkblue", size = 1) +
  geom_point(color = "red", size = 2) +
  labs(title = "Daily Page Views Trend", x = "Date", y = "Page Views") +
  theme_minimal()