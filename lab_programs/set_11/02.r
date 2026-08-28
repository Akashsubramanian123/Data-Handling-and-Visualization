library(plotly)

fig <- plot_ly(
  type = "funnel",
  y = c("Electronics", "Appliances", "Clothing"),
  x = c(50000, 40000, 35000)
) %>%
  layout(title = "Sales Conversion Funnel by Category")

fig