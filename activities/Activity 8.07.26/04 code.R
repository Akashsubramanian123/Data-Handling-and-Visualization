cat("--- QUESTION 4 ---\n")

total_employees <- 200

departments <- c("Marketing", "HR", "IT", "Sales", "Finance")
dept_percentages <- c(30, 15, 25, 20, 10) 

pie(dept_percentages, 
    labels = paste(departments, "-", dept_percentages, "%"), 
    col = rainbow(length(departments)),
    main = "Employee Departments (Random Data)")

marketing_pct <- dept_percentages[1] # 30%
marketing_count <- total_employees * (marketing_pct / 100)

cat("Total Employees:", total_employees, "\n")
cat("Random Marketing Percentage:", marketing_pct, "%\n")
cat("Number of employees likely in Marketing:", marketing_count, "\n\n")