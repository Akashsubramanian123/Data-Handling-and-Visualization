library(fmsb)

data <- as.data.frame(matrix(c(3,0,1, 3,0,2, 3,0,1), nrow=3, byrow=TRUE))
colnames(data) <- c("Q1", "Q2", "Q3")
data <- rbind(rep(3,3), rep(0,3), data)

radarchart(data, axistype=1, title="Overall Pattern of Responses")