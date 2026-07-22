library(knitr)

df6_table <- data.frame(
  `Product ID` = 1:3,
  `Product Name` = c("Product A", "Product B", "Product C"),
  `January Sales` = c(2000, 1500, 1200),
  `February Sales` = c(2200, 1800, 1400),
  `March Sales` = c(2400, 1600, 1100)
)

kable(df6_table, caption = "Monthly Sales Data per Product")