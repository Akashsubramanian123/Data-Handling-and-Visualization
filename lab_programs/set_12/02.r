library(ggplot2)

ggplot(df12_web, aes(x = as.character(Date), y = CTR, fill = as.character(Date))) +
  geom_bar(stat = "identity") +
  labs(title = "Daily Click-Through Rates", x = "Date", y = "CTR (%)") +
  theme_minimal()