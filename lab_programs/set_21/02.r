library(ggplot2)
library(dplyr)

df21 <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  CTR = c(2.3, 2.7, 2.0, 2.4, 2.6)
)

N <- 3
top_n_days <- df21 %>% arrange(desc(CTR)) %>% head(N)

ggplot(top_n_days, aes(x = reorder(as.character(Date), -CTR), y = CTR, fill = as.character(Date))) +
  geom_bar(stat = "identity") +
  labs(title = paste("Top", N, "Days by Highest CTR"), x = "Date", y = "Click-Through Rate (%)") +
  theme_minimal()