#factotrs
(g=sample(A=40, B=20, C=30, D=10))
?factor

(grades =sample(x=c(letters[1:4]),size=30, replace=T , prob=c(.4,.3, .2, .1)))

(gradesF= factor(grades))                                                            

summary(grades)


summary(gradesF)

table(grades)

table(gradesF)
class(gradesF)
(gradesFO= factor(grades, ordered=T))
(gradesFO1= factor(grades, ordered=T, levels=c('b','c', 'a', 'd')))
summary(gradesFO1)

(marks= ceiling(rnorm(30, mean=60, sd=5)))
(gender= factor(sample(c('M','F'), size=30, replace=T)))
(student1= data.frame(marks, gender, gradesFO1))

boxplot(marks~ gradesFO1, data=student1)
boxplot(marks~ gradesFO1+ gender, data=student1)
boxplot(marks)
 summary(marks)
 
 abline(h=summary(marks))
quantile(marks) 
