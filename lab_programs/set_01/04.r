library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel("Sales Data Dashboard"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sales_filter", "Minimum Sales Threshold:", min = 10000, max = 25000, value = 10000)
    ),
    mainPanel(
      plotOutput("lineChart"),
      plotOutput("barChart")
    )
  )
)

server <- function(input, output) {
  df1 <- data.frame(
    Month = factor(c("January", "February", "March", "April", "May"), levels = c("January", "February", "March", "April", "May")),
    Sales = c(15000, 18000, 22000, 20000, 23000)
  )
  
  df_products <- data.frame(
    Product = c("Product A", "Product B", "Product C", "Product D", "Product E"),
    Sales = c(45000, 38000, 29000, 22000, 18000)
  )
  
  output$lineChart <- renderPlot({
    filtered_df <- subset(df1, Sales >= input$sales_filter)
    ggplot(filtered_df, aes(x = Month, y = Sales, group = 1)) +
      geom_line(color = "blue") + geom_point() +
      labs(title = "Filtered Monthly Sales")
  })
  
  output$barChart <- renderPlot({
    ggplot(df_products, aes(x = Product, y = Sales, fill = Product)) +
      geom_bar(stat = "identity") +
      labs(title = "Top Selling Products")
  })
}

shinyApp(ui = ui, server = server)