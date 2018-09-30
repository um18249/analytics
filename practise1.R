# Data structures in slides

#control+enter when you are in the line to execute
#
# Vectors----
x=1:10 #create seq of nos from 1 to 10
x
x1<- 1:20
x1
(x1=1:10)
(x2=c(1,2,13,4,5))
class(x2)
(x3=letters[1:10])

LETTERS[1:26]

(x3b= c('a', "Dhiraj","4"))
?c

class(x3b)
(x4=c(T, FALSE,TRUE,T,F))
class(x4)

x5=c(3L,5L)
class(x5)

(x5b=c(1,'a',T,4L))
class(x5b)

(x6= seq(0,100,by=3))
?seq
methods(class='numeric')

ls() #variables in my environment

x6

length(x6)

x6[20] #print the 20th element
x6[3] #print the 3rd element

x6[c(2,6)] #to print more than one variable using the concatinate function
x6[-1]  #access all elements except 1st element

x6[-c(1:10)] #to remove 1 to 10 elements
x6[c(2.4, 7.54)] #real numbers are truncated to integers
length(x6)
x6[-(length(x6)-1)] #to remove the 33rd element. it removes 96
sort(x6[-c(1,2)])
sort(x6,decreasing=T) #to decrease the  x6 elements in decreasing order
rev(x6)  #to show the nos in reverse order

x7=c(x6,x2) #to combine 2 elements x6 and x2
x7

seq(-3,10,by=.2)
(x=-3:2)
x[2]<- 0; x #modify the 2nd element[2] from 2 to 0
x[x<0]=5;x #modify all the elemnts with value<0 with 5
 x[2]<- 10;x
x[x<0]=5;x

x= x[1:4];x #truncate the elements to first 4

x[x<=1 & x>=-1]=100;x #modify elements less than 1 and greater than -1

#delete vector
(x=seq(1,5,length.out=10))
x
x= NULL
x


(x= rnorm(100))  # to create standard normal distribution upto 100
(x1=rnorm(1000000, mean=50, sd=5))
plot(density(x1))  #when sample is large the plot is almost normal distribution
mean(x1) #mean of the plot shown

abline(v=mean(x1)) #to draw the line through the mean


#matrix----
1:12
100:111

(m1=matrix(1:12, nrow=4)) #to draw a matrix having elements 1 to 12 and no of rows=4
(m2=matrix(1:12, ncol=3, byrow=T)) #to draw a matrix having elements 1 to 12 and no of cols=3

x=101:124
length(x)

class(m1)
attributes(m1)
dim(m1)
m1

m1[1,2:3] #before comma shows the row after comma is the columns. This displays the elements of col 2 and 3 in row 1 #access the elements
m1[c(1,3),] #access the 1st and 3rd row. No elements after , shows we want to access all columns

m1[c(1,2),c(2,3)]
m1[,-c(1,3)] #do not access columns 1 and 3

paste("C", "D", sep="-")
paste("c", 1:100, sep="-")
(colnames=paste('C', 1:3, sep='-'))
m1
(rownames= paste('R', 1:3, sep='-'))
m2[-2,] #exclude 2nd row
m2

m2[1:5] #matrix is like vector

m2[c(TRUE,F,T,F),c(2,3)] #logical indexing

m1:m2
m1[1:2,1:2]
m1[c('R1'), c('C1','C3')]


#modify vector
m2
m2[2,2]
m2[2,2]=10
m2
m2[m2>10]=99
m2
rbind(m2,c(50,60,70)) #when an additional row is added
m2
cbind(m2,c(13,16,77,88)) #when an additional column is added

#row and col wise summary
m1
colSums(m1); rowSums(m1) #sum of columns and rows
colMeans(m1); rowMeans(m1) #mean of columns and rows

t(m1) #transpose
m1
sweep(m1, MARGIN=1, STATS=c(2,3,4,5), FUN="+") #rowwsie
sweep(m1, MARGIN=2, STATS=c(2,3,4), FUN="*") #colwise
m1


#add margins
m1

addmargins(m1, margin=1,sum) #colwise
addmargins(m1,1,sd) #colwise function

addmargins(m1,2,mean) #rowsie function
addmargins(m1,c(1,2),mean) #row and col wise function

addmargins(m1,c(1,2),list(list(mean,sum,max), list(var,sd)))

#dataFrame----
#create Vectors to be combined into DF
(rollno= 1:30)
(sname=paste('student',1:30,sep='-'))
(gender=sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks= floor(rnorm(30, mean=50,sd=10))) #to remove the decimal part #floor will take to lower value and ceiling will take to the higher value
(course=sample(c("BBA", "MBA"), size=30, replace=T, prob=c(0.5,0.5)))
(marks2= ceiling(rnorm(30,mean=50,sd=10)))

set.seed(1234) #if you want to genertae the same pattern as the computer
g=sample(c('M','F'), size=20, replace=T, prob=c(.7,.3))
table(g)
prop.table(table(g))



#Create DF
df1= data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors=F)
str(df1) #structure of DF
head(df1) #structure of first 6 rows
head(df1, n=3) #top 3 rows

