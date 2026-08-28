library(ggplot2)

df12_web <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03")),
  PageViews = c(1500, 1600, 1400),
  CTR = c(2.3, 2.7, 2.0)
)

ggplot(df12_web, aes(x = Date, y = PageViews)) +
  geom_line(color = "blue") + geom_point() +
  labs(title = "Daily Page Views Trend", x = "Date", y = "Page Views") +
  theme_minimal()