library(knitr)

df14_table <- data.frame(
  `Product ID` = 1:3,
  `Product Name` = c("Product A", "Product B", "Product C"),
  `Quantity Available` = c(250, 175, 300),
  `Price ($)` = c(20, 15, 18)
)

kable(df14_table, caption = "Inventory Data")