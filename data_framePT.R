#creating a data frame for students

(rollno = 1:100)
(sname=paste('student',1:100, sep=c("="))
(gender=sample(c('M','F'),size=100, replace=T, prob=c(0.6,0.4)))
  length(gender)
(age=runif(100, min=21, max=30))
  length(age)
(wexp=floor(rnorm(1:100, mean=4,sd=1))) 
  length(wexp)
(placement=c('Yes','No'))
  length(placement)
(grade=c('A','B','C','D'))
  length(grade)
(course=sample(c('Marketing','Finance','HR'), size=100, replace=T,prob=c(.3,.3,.3)))  
(df1= data.frame(age, gender, wexp, grade, placement, course))
str(df1)
(df1$grade= factor(df1$grade,levels=c('D','C','B','A')))
summary(df1)

#Analysis with dplyr
library(dplyr)
df1 %>% group_by( placement, gender) %>% summarise(mean(wexp), max(wexp), mean(age))
?filter
df1 %>% filter(course=='Marketing') %>% summarise(mean(age), mean(wexp))

#drawing graphs

hist(df1$age)
boxplot(df1$age)
t1=table(df1$placement)
barplot(t1)
pairs(df1[,c('age','wexp')])
pie(t1)

par(mfrow=c(2,2)) #to plot the graphs in a 2 by 2 region
pie(table(df1$gender))
pie(table(df1$wexp))
pie(table(df1$age))
pie(table(df1$course))

#find students having largest wexp in each course for each gender

df1 %>% group_by(course, gender) %>% arrange(course, gender, wexp) %>% top_n(1, wexp)

write.csv(df1, './data/ximb.csv')
df2= read.csv('./data/ximb.csv')
head(df2)


#clustering
km3= kmeans(df1[,c('age','wexp')], centers = 3)
km3
km3$centers
plot(km3$centers)

#decision trees

library(rpart)
library(rpart.plot)

tree= rpart(placement ~ . , data=df1)
tree
rpart.plot(tree, nn=T, cex= .8)
printcp(tree)
prune(tree, cp=.03)
ndata= sample_n(df1, 5)
ndata
?prune

predict(tree, newdata= ndata, type='class')
predict(tree, newdata=ndata, type='prob')


#logistic regression
logitmodel1= glm(placement ~ . , data= df1, family='binomial')
summary(logitmodel1)
logitmodel1a =glm(placement~age +gender, data=df1, family='binomial')
summary(logitmodel1a)

#linear regression
linear1= lm(age ~ ., data=df1)
summary(linear1)
