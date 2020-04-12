1+1 #sum
2+3*4#Operator precedence
3^2#Exponentiation
exp(1)#Basic mathematical functions are available
sqrt(10)#squareroot
pi#The constant pi is predefined
2*pi*6378#Circumference of earth at equator(in km)
#------------------------------------------------------#
x<-1
y<-3
z<-10
x*y*z
#------------------------------------------------------#
  
x<-c(2,0,0,4) #Creates vector with elements 2,0,0,4
y<-c(1,9,9,9)
x+y
x*4 #Multiplies elements
sqrt(x) #Function applies to each element 
#------------------------------------------------------#Accessing Vector
x<-c(2,0,0,4) #Select the first element, equicalent to x[c9(1)]
x[1]
x[-1]#Excluding first element
x[1]<-3;x
x[-1]<-5;x
y<9#Compares each element, returns result as vector
y[y<9]=2 #Edits elements marked as True in index vector
y
#------------------------------------------------------#Data Frames

df<-data.frame(x=1:3,y=c('a','b','c'))
df
df_new<-data.frame(height=c(150:160),weight=c(65:75))
df_new
#---------------------Excerises-----
df<-data.frame(x=1:3,y=c('a','b','c'))
df
df[1,2]# Find a
df[c(2),c(1:2)]#Find b
df[c(1,3),c(1,2)]#Find 1,a & 3,c
df[c(1,3),2]#Find a&c
df[3,2]#Find c
#----------------Dataset-
library(datasets) #calling the datasets libarary
data("airquality")#Selecting the dataset
airquality<-datasets::airquality#assining the dataset to airquality
airquality
head(airquality)
tail(airquality)
airquality[,c(1,2)]
summary(airquality$Temp)
summary(airquality)
##############
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Temp)
plot(airquality)
#points and lines
plot(airquality$Ozone, type="l")#p:points,l:lines,b:both
plot(airquality$Ozone,xlab="Ozon Concentration",
ylab = "No of Instances",main="Ozon level in NY city",
col="blue")
#Horizontal bar plot
barplot(airquality$Ozone,main='Ozone Conenteratoin in air',
        xlab ='Ozone Levels',ylab='Number',col='blue',horiz=F)
#Histogram
hist(airquality$Solar.R)
hist(airquality$Solar.R,
main = 'Solar Radiation values in air', xlab = "Solar rad",col='blue')
#Single box plot
boxplot(airquality$Solar.R)
#Multiple box plots
boxplot(airquality[,1:4],main='Multiple')
#margin of the grid(mar),
#no of rows and colums(mfrow),
#whether a border is to be included(bty)
#and position of the 
#labels(las: 1 for horizontal, las:0 for vertical)
#bty-box around the plot

par(mfrow=c(3,3),mar=c(2,5,2,1), las=1, bty="n")
plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
plot(airquality$Ozone, type="l")
barplot(airquality$Ozon,main='Ozone Concenteration in air',
        xlab='Ozone levels', col='green', horiz=T)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multiple Box plots')