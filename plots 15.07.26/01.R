x<-c(1,17,3,8,6,15)

barplot(x,xlab="Audience",ylab="count",col="orange",col.axis="red",col.lab="darkgreen")

names(x)<-c("Java","C","C++","Python","SQL")

pie(x,labels=names(x),col=c("yellow","orange","green","blue","red","purple"),main="Pie chart of languages:",col.main="blue",radius=-1)

library(plotrix)

pie3D(x,labels=names(x),col=c("yellow","orange","green","blue","red","purple"),main="Pie chart of languages:",col.main="blue",labelcol="darkgray")

hist(x,xlab = "Values",main="Histogram of vector x:",col = "blue",col.lab= "darkgreen",col.main="darkgreen")

orange<- Orange[,c("age","circumference")]

plot(x=orange$age,y=orange$circumference,xlab = "Age", ylab = "Circumference",col="red", main = "Age vs Circumgerence",col.lab = "darkgreen", col.main = "darkgreen",col.axis = "darkgreen")

pairs(~age + circumference, data = Orange, col.axis = "darkgreen")

boxplot(x,xlab = "languages",ylab="values",main="boxplot",col.axis = "darkgreen", col.lab = "darkgreen")

