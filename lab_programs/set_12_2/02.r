library(ggplot2)
library(dplyr)

df12_gender <- df12_2 %>% count(Gender)

ggplot(df12_gender, aes(x = "", y = n, fill = Gender)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Gender Distribution") +
  theme_void()