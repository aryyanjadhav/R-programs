ages=c(21,30,40,22,17,15,67,49,52,83)
plot(ages)

salary=c(70000,30000,20000,10000,66000,40000,50000,60000,80000,90000)
plot(salary)
plot(ages,salary) #plot (x-axis,y-axis)

help(plot)

data()
airquality=datasets::airquality #in-built dataset airquality is loaded in the environment

head(airquality,10) #top 10 rows of data
tail(airquality,10) #lower 10 rows
names(airquality) #names of all coloumns

airquality[,c(1,2)] #all rows and 1,2 columns
AQdf=airquality[,-6] #AQdf is new data frame with all rows of airquality and excluding 6 coloumns

summary(airquality[,1]) #summary statistics for column 1
summary(airquality$Temp)

airquality$Wind #displays the wind column

#Visualization of the data
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type='p')
plot(airquality) #scatterplot (important for machine learning)
plot(airquality$Ozone,airquality$Wind,type='b')

plot(airquality$Wind,
     xlab='ozone concentraion',
     ylab='no. of instances',
     main='Ozone levels in NY city',
     col='green',
     type='b'
     )
help(plot)

#horizontal bar plot
barplot(airquality$Ozone,
        main='Ozone concentration in air',
        ylab='ozone levels',
        col='red',
        horiz=T, #horizontal = true
        axes=F) #hide/unhide axes
help(barplot)

#histogram
hist(airquality$Temp) #his is command for displaying histogram

hist(airquality$Temp,
     main='solar radiation values in air',
     xlab='solar radiation',
     col='cyan',
     border='red')

#single box plot
help(boxplot)

boxplot(airquality$Wind,
        main='Wind boxplot',
        col='cyan',
        border='orange',
        horizontal=T)

boxplot.stats(airquality$Wind)$out #this command gives the outliers in the boxplot

airquality$Ozone

#multiple boxplots
boxplot(airquality[1:4],
        main='multiple boxplots',
        horizontal=T,
        col='green',
        border='purple')

#margin of the grid(mar)(bottom,left,top,right)
#no of rows and columns(mfrow)
#'bty' command gives box around plot.
#par is partition of screen parts

help(par)
par(mfrow=c(3,3),mar=c(1,2,1,2), las=0, bty='o')
plot(airquality$Ozone)
plot(airquality$Wind)
plot(airquality$Solar.R)
plot(airquality$Temp)
plot(airquality$Month)

#considering NA values
max(airquality$Wind)
min(airquality$Solar.R)
#if NA values are present in the dataset then the min,max,mean, median wont work
#to remove the NA values we use 'na.rm=T'
mean(airquality$Solar.R,na.rm=T)

#calculating variance,skewness,standard deviation,kurtosis
var(airquality$Solar.R,na.rm=T)
sd(airquality$Solar.R,na.rm=T)

skewness(airquality$Solar.R,na.rm=T) #error
kurtosis(airquality$Solar.R,na.rm=T) #error

#for skewness and kurtosis we need to install packages
#skewness and kurtosis is in moments package
#now the above commands wont give error and work properly
skewness(airquality[1:4],na.rm=T)

#density plot is a smooth curve plot
plot(density(airquality$Solar.R,na.rm=T))

#quakes dataset
quakes=datasets::quakes
