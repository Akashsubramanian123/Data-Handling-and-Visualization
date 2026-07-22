marks <- sample(40:100, 30, replace = TRUE)

count_A <- sum(marks >= 90)
count_B <- sum(marks >= 80 & marks <= 89)
count_C <- sum(marks >= 70 & marks <= 79)
count_D <- sum(marks >= 60 & marks <= 69)
count_E <- sum(marks < 60)

grade_counts <- c(count_A, count_B, count_C, count_D, count_E)
grade_names <- c("A", "B", "C", "D", "E")

barplot(grade_counts, names.arg = grade_names, col = c("blue","green","orange","yellow","violet"), main = "Class Grades")

average_score <- mean(marks)
print(paste("The average score is:", average_score))