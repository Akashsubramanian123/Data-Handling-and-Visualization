cat("--- QUESTION 5 ---\n")

activities <- c("Reading", "Cooking", "Painting", "Music Listening", "Other")
activity_percentages <- c(35, 20, 10, 25, 10)

pie(activity_percentages, 
    labels = paste(activities, "-", activity_percentages, "%"), 
    col = c("lightblue", "lightgreen", "pink", "lightyellow", "lightgray"),
    main = "Weekend Activities of Employees")

most_common_activity <- activities[which.max(activity_percentages)]

cat("According to the chart data, the most common activity is:", most_common_activity, "\n")