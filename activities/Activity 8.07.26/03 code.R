cat("--- QUESTION 3 ---\n")

fruits <- c("Apple", "Banana", "Mango", "Orange", "Grapes")
fruit_votes <- sample(10:60, 5, replace = TRUE) 

barplot(fruit_votes, 
        names.arg = fruits, 
        col = c("red", "yellow", "orange", "darkorange", "purple"), 
        main = "Favorite Fruits Survey (Random Data)",
        ylab = "Number of Votes")

most_preferred <- fruits[which.max(fruit_votes)]
least_preferred <- fruits[which.min(fruit_votes)]

cat("Generated Votes: \n")
print(data.frame(Fruit = fruits, Votes = fruit_votes))
cat("Most Preferred Fruit:", most_preferred, "\n")
cat("Least Preferred Fruit:", least_preferred, "\n\n")