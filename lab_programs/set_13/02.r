library(ggplot2)

df_geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  AvgTemp = c(75, 68, 80)
)

ggplot(df_geo, aes(x = AvgTemp, y = Population)) +
  geom_point(size = 4, color = "red") +
  labs(title = "Average Temperature vs Population", x = "Avg Temperature (°F)", y = "Population") +
  theme_minimal()

# Insights:
# Evaluates whether higher average temperatures correspond to population density variations.