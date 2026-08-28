library(ggplot2)

df11 <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

ggplot(df11, aes(x = "", y = Sales, fill = Category)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar("y") +
  labs(title = "Sales Distribution Across Product Categories") +
  theme_void()