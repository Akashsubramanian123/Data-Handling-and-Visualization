# 1. Generate 30 random marks between 40 and 100
marks <- sample(40:100, 30, replace = TRUE)

# 2. Count how many marks fall into each grade bucket
count_A <- sum(marks >= 90)
count_B <- sum(marks >= 80 & marks <= 89)
count_C <- sum(marks >= 70 & marks <= 79)
count_D <- sum(marks >= 60 & marks <= 69)
count_E <- sum(marks < 60)

# 3. Combine the counts and names together
grade_counts <- c(count_A, count_B, count_C, count_D, count_E)
grade_names <- c("A", "B", "C", "D", "E")

# 4. Draw a simple bar chart
barplot(grade_counts, names.arg = grade_names, col = "blue", main = "Class Grades")

# 5. Calculate and print the average
average_score <- mean(marks)
print(paste("The average score is:", average_score))
# ==========================================
# QUESTION 3: Most and Least Preferred Fruit
# ==========================================
cat("--- QUESTION 3 ---\n")

# 1. Create random data for fruits
fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")
# Generate 5 random voting numbers between 10 and 60
fruit_votes <- sample(10:60, 5, replace = TRUE) 

# 2. Draw the Bar Chart
barplot(fruit_votes, 
        names.arg = fruits, 
        col = c("red", "yellow", "orange", "darkorange", "purple"), 
        main = "Favorite Fruits Survey (Random Data)",
        ylab = "Number of Votes")

# 3. Find the most and least preferred
most_preferred <- fruits[which.max(fruit_votes)]
least_preferred <- fruits[which.min(fruit_votes)]

cat("Generated Votes: \n")
print(data.frame(Fruit = fruits, Votes = fruit_votes))
cat("Most Preferred Fruit:", most_preferred, "\n")
cat("Least Preferred Fruit:", least_preferred, "\n\n")


# ==========================================
# QUESTION 4: Marketing Department Employees
# ==========================================
cat("--- QUESTION 4 ---\n")

total_employees <- 200

# 1. Create random percentage data for departments (must sum to 100)
departments <- c("Marketing", "HR", "IT", "Sales", "Finance")
dept_percentages <- c(30, 15, 25, 20, 10) # Using 30% for Marketing as our random example

# 2. Draw a Pie Chart just to visualize it
pie(dept_percentages, 
    labels = paste(departments, "-", dept_percentages, "%"), 
    col = rainbow(length(departments)),
    main = "Employee Departments (Random Data)")

# 3. Calculate how many work in Marketing
# Formula: Total Employees * (Marketing Percentage / 100)
marketing_pct <- dept_percentages[1] # 30%
marketing_count <- total_employees * (marketing_pct / 100)

cat("Total Employees:", total_employees, "\n")
cat("Random Marketing Percentage:", marketing_pct, "%\n")
cat("Number of employees likely in Marketing:", marketing_count, "\n\n")


# ==========================================
# QUESTION 5: Weekend Activities
# ==========================================
cat("--- QUESTION 5 ---\n")

# 1. Use the actual data visible from the image
# Note: 35 + 20 + 10 + 25 = 90. We add a 10% "Other" category to make it a full 100% pie chart.
activities <- c("Reading", "Cooking", "Painting", "Music Listening", "Other")
activity_percentages <- c(35, 20, 10, 25, 10)

# 2. Draw the Pie Chart
pie(activity_percentages, 
    labels = paste(activities, "-", activity_percentages, "%"), 
    col = c("lightblue", "lightgreen", "pink", "lightyellow", "lightgray"),
    main = "Weekend Activities of Employees")

# 3. Find the most common activity (the one with the highest percentage)
most_common_activity <- activities[which.max(activity_percentages)]

cat("According to the chart data, the most common activity is:", most_common_activity, "\n")