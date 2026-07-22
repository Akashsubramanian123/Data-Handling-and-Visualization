library(ggplot2)
library(dplyr)

df7_gender <- df7 %>% count(Gender)

ggplot(df7_gender, aes(x = "", y = n, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Gender Distribution") +
  theme_void()