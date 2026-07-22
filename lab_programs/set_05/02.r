library(ggplot2)
library(dplyr)

N <- 3
df5_top <- df5 %>% arrange(desc(CTR)) %>% head(N)

ggplot(df5_top, aes(x = reorder(as.character(Date), -CTR), y = CTR, fill = as.character(Date))) +
  geom_bar(stat = "identity") +
  labs(title = paste("Top", N, "Days with Highest CTR"), x = "Date", y = "Click-through Rate (%)") +
  theme_minimal()