library(ggplot2)

df_scatter <- data.frame(
  Ad_Budget = c(1000, 1500, 2200, 1800, 2500),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

ggplot(df_scatter, aes(x = Ad_Budget, y = Sales)) +
  geom_point(color = "darkgreen", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed") +
  labs(title = "Advertising Budget vs Monthly Sales", x = "Advertising Budget ($)", y = "Monthly Sales ($)") +
  theme_minimal()

# Insights:
# The scatter plot reveals a strong positive correlation between advertising budget and monthly sales,
# indicating that increasing the advertising spend generally leads to higher sales revenue.