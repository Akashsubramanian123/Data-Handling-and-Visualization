library(ggplot2)

df3_perf <- data.frame(
  YearsOfService = c(5, 3, 7, 4, 2),
  PerformanceScore = c(85, 92, 78, 90, 76)
)

ggplot(df3_perf, aes(x = YearsOfService, y = PerformanceScore)) +
  geom_point(color = "purple", size = 3) +
  geom_smooth(method = "lm", se = FALSE, color = "black") +
  labs(title = "Years of Service vs Performance Score", x = "Years of Service", y = "Performance Score") +
  theme_minimal()

# Insights:
# There does not appear to be a strict linear relationship between years of service and performance score; 
# newer employees can score highly compared to more senior employees.