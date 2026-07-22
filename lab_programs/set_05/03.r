library(ggplot2)
library(tidyr)

df5_interactions <- data.frame(
  Date = as.Date(c("2023-01-01", "2023-01-02", "2023-01-03", "2023-01-04", "2023-01-05")),
  Likes = c(100, 120, 90, 110, 130),
  Shares = c(30, 40, 25, 35, 45),
  Comments = c(15, 20, 10, 18, 25)
)

df5_long <- pivot_longer(df5_interactions, cols = c("Likes", "Shares", "Comments"), names_to = "Interaction", values_to = "Count")

ggplot(df5_long, aes(x = Date, y = Count, fill = Interaction)) +
  geom_area() +
  labs(title = "Website User Interactions Over Time", x = "Date", y = "Interaction Count") +
  theme_minimal()