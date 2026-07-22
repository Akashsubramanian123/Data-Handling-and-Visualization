library(ggplot2)
library(dplyr)

df2_pie <- data.frame(
  Satisfaction = factor(c(3, 4, 5)),
  Count = c(1, 2, 2)
)

ggplot(df2_pie, aes(x = "", y = Count, fill = Satisfaction)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y", start = 0) +
  labs(title = "Customer Satisfaction Score Distribution") +
  theme_void()