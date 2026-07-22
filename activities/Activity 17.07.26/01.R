# 1. Define the dataset
student_marks <- c(45, 52, 58, 60, 65, 68, 72, 75, 80, 90)

# 2. Generate the ECDF plot using base R
plot(ecdf(student_marks), 
     main = "ECDF of Data Science Quiz Marks",
     xlab = "Marks", 
     ylab = "Cumulative Probability F(x)",
     col = "#1F4E79", 
     lwd = 2,
     verticals = TRUE, 
     do.points = TRUE, 
     pch = 19)

# Add a grid for easier interpretation
grid(nx = NULL, ny = NULL, col = "lightgray", lty = "dotted")