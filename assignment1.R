library(readxl)
Q7 <- read_excel("C:/Users/prasa/Desktop/Ass/Ass-1/assigment exl/Q7.xlsx")
#Mean,Median,Mode
summary(Q7)
#range
range(Q7$Points)
range(Q7$Score)
range(Q7$Weigh)
#Varience
var(Q7$Points)
var(Q7$Score)
var(Q7$Weigh)
#standard deviation
sd(Q7$Points)
sd(Q7$Score)
sd(Q7$Weigh)

#Draw some inferences
par(mfrow=c(3,3),mar=c(2,5,2,1), las=1, bty="n")
plot(Q7$Points)
plot(Q7$Points,Q7$Score)
plot(Q7$Points, type="l")
plot(Q7$Points, type="l")
plot(Q7$Points, type="l")
barplot(Q7$Points,main='Total points',
        xlab='Points levels', col='green', horiz=T)
hist(Q7$Score)
boxplot(Q7$Score)
boxplot(Q7[,2:4],main='Multiple Box plots')
