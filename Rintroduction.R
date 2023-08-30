"Hello World!"
name1='amit'
name1
name2='aryan'
age1=25
x=21
x
num='20'
age1=age1+5
age1
4*8
text='excellent'
paste('ExcelR is',text) #concatenate / combine text using paste function
paste('students are',text)
paste('My name is',name2)
#R is case sensitive
#we can use both upper and lower case in the same word
#we can also use numbers and special characters like . and _ only
#but we cant start the variable name with numbers or special characters
#space is also a special character
myvar='aryan'
my_var='aryaan'
mYvAr='rahul'
myvar2='hello'
this.year='2023'

#data types in R

#numeric/float numbers
x=10.5
class(x)
class(name1)

#integer
y=1000L
class(y)

#character/string
X='R is exciting'
class(X)

#logical/boolean
x=TRUE #or T, FLASE, F
class(x)
x=F
class(x)

#comparison/relational operators
3>5
5>3
5==5
1!=6 #!= is not equal to

#arithmetic operators
x=20
y=3

x+y
x-y
x*y
x/y
x^2
x%%y #%% gives remainder
x%/%y #%/% gives integer answer
2*pi #pi is constant

??constants #this gives help regarding constants in R
??constant #s does not matter
LETTERS

#In built math functions
max(20,45,78)
min(4,7,1,5,0,2)
sqrt(25)
abs(-4.5)

#data structures: vectors,data frames
#homogeneous vectors
#vectors of strings
fruits=c('banana','apple','Orange','strawberry') #c stands for combining
class(fruits)
#vector of numerical
n1=c(10,20,30,40)
n2=c(T,F)
class(n1)
class(n2)

#heterogeneous vectors
mix=c(81,5.2,T,5L,FALSE)
class(mix)
#character dominates the whole dataset even if it is only one value, then integer, numeric and then logical

x=c(1,9,9,9)
y=c(2,5,8,4)
x+y
x*5
(x+y)*1.5

#sequence
1:10
1:1000
40:45
seq(1,50,5) #start value, end value, increment/decrement value
seq(1,50,by=3) #by means increase BY 3, it is totally optional
seq(1,10)
seq(50,1,-5) #while giving decrement value (-5) the bigger number is to be given first
n1=1.5:5.5 #default increment value is 1

#Repetition function
rep(45,7) #rep gives the first value(45) for 7 times
rep('Mango',5) #rep writes mango for 5 times

#Random sample
sample(1:50,3) #sample gives any 3 numbers from 1-50
sample(1:10,200) #error as 200 numbers are not there between 1-10
sample(1:10,200,replace=TRUE) #here the command works as replace is allowed, it allows repetition of numbers
sample(c('hp','apple','lenovo','dell'),7,replace=T)

#indexing (indexing in R starts from 1 and it starts from 0 in python)
x=c(2,3,4,5,6,7,8,9)
x[7]
x[5]
x[c(5,7)]
x[-1] #-1 simple excludes 1st element from the list
x[c(-2,-6)] #this simply excludes 2nd & 6th element

x[1]=0 #this replaces 1st element (2) with 0
x[-1]=10 #this excludes the first element and changes all other elements to 10
x[c(1:5)] #this displays from 1st to 5th element

y=c(1,9,9,9)
y<9 #every element of y is compared with 9 hence displays tfff
y[y<9]=7 #elements <9 will be replaced by 7
y[y>7]=10 #elements >7 will be replaced by 10

#relational operators with vectors
marks=c(60,80,43,72)
marks>50 #displays t or f for condition
marks[marks>50] #shows the marks that are >50

names=c('ARYAN','RAHUL','raj','yash')
p1=c('a','b')
'aryan'%in% names # %in% searches the word in names vector or list
'ARYAN'%in% names

#slicing
marks
marks[3:7] #displays 3-7th element from marks
marks[3]=97 #replaces the 3rd element with 97
marks[-3]=100 #makes all the marks as 100 excluding 3rd element
marks[6]=70

price=c(2999,499,1299,799,5490,2499,1999)
price[2:7] #displays from 2-7th element
price[price>1000] #displays prices greater than 1000

sort(price) #arranges the price list in ascending order
help(sort)
sort(price,decreasing=T) #decreasing is the command we use for displaying the price data in descending order

length(marks) #gives number of elements in marks data set

paste(1:12)
nth=paste(1:12,c('st','nd','rd',rep('th',9))) #this adds st,nd,rd to 1,2,3 and then th for 9times
nth

month.name #full month names
month.abb #abbrevation fo months

paste(month.abb,'is the',nth,'month of the year') #the nth list above is added to abb month names


#basic functions on vectors
price
length(price)
max(price)
min(price)
sum(price)
mean(price)
median(price)
help(mode)

#data frames
#slicing data frames
a=c(42,45,67,95,46,73)
b=c('r','e','u','w','g','s')

data.frame(a,b) #both the data sets should be of equal elements
df=data.frame(a,b) #saves the dataframe in data section by name df
#row is called as observation and coloumns as variables

df1=data.frame(
  training=c('strength','stamina','agility'),
  pulse=c(100,150,120),
  duration=c(60,30,45)
)
df1
df1[,1] #gives all rows and 1 coloumn (row,coloumn)
df1[2,] #gives the 2nd row and all its associated coloumns
df1[,3]

df1$training #$ gives all the coloums under it.

df2=data.frame(
  height=c(150,160),
  weight=c(65,72)
)

food=data.frame(
  name=c('pav bhaji','mutton biryani','chicken biryani',
         'kaju katli','gulab jamun','butter chicken','paneer tikka'),
  type=c('veg','nonveg','nonveg','veg','veg','nonveg','veg'),
  taste=c('spicy','spicy','spicy','sweet','sweet','spicy','spicy'),
  price=c(120,200,180,420,130,350,230)
)

#extracting rows with food type=veg

food[food$type=='veg',] #here food$type=='veg' is row and , considers all coloumns

#food names and prices of all nonveg items

food[food$type=='nonveg',c(1,4)]

#all spicy items with price less than 300

food[food$taste=='spicy'&food$price<300,] #& is AND logical operator
food[food$taste=='spicy'|food$price<300,] #| is OR logical operator

#Orange, mtcars are in-built data sets

Orange
mtcars

dim(mtcars) #dim gives the dimensions of the data set mt cars
nrow(mtcars) #nrow gives the number of rows in the dataset
ncol(mtcars) #ncol gives the number of coloumns in the dataset
str(mtcars) #structure - coloumn names, data types and values
summary(mtcars) #statistical summary of the coloumn

help(mtcars)
mtcars$cyl #gives the cylinder values
table(mtcars$cyl) #generates a table with cylinder values
table(mtcars$gear)

#USArrests is another in-built dataset
USArrests
View(USArrests)

head(USArrests) #head displays top 6 records
tail(USArrests) #tail displays lowest 6 records
head(USArrests,17) #it displays top 17 records

#To check all the avaibale in-built datasets
data()