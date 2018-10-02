# Combined Plots

#plot, histogram, pie, boxplot, linechart, correlation plot


#plot
women
plot(women)
plot(women, type='p', pch=19) #plotting points type=p pch stands for plotting symbols
plot(women, type='p', pch=19, col='red')
plot(women, type='l')#to draw a line type='l'
plot(women, type='b') #line as well as points
plot(women, type='b', pch=18, lty=2, col=2) #the points are taken up by b
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)

#more features with plot
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
title(main='Main Title', sub='Sub Title')

#see cheat sheet on base graphs

plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4) #draw line with line of best fit

#boxplot
boxplot(women$height)
abline(h=c(58, 62,65,68,72))

#draw lines on plot for number summary
summary(women)
quantile(women$height)
quantile(women$height, seq(0,1,.1))
quantile(women$height, seq(0,1,.01))
stem(women$height)
boxplot(women$height, col='green')
abline(h=quantile(women$height))
text(1+.2, quantile(women$height), labels=c('min','1Q','median','3Q','max'))

#histogram
hist(women$height)
hist(women$height, breaks=10)
hist(women$height, breaks=5, col=1:5) #col=1:5 specifies the colour

#histogram2
(x = rnorm(100,50,10))
hist(x)

hist(x, freq=F, col=1:5) #frequency= false
lines(density(x)) 

#density plot : shape of data
plot(density(x), col='red')

#pie
gender
table(gender)
pie(table(gender))
x = c(10,20,40,50)
pie(x)
xlabels = c('A','B','C','D')
x/sum(x)
(labels2= paste(xlabels,round(x/sum(x),2)*100, sep='-'))
pie(x, labels=labels2)
x
#pie should be avoided as much as posible as we will not be able to differentiate in terms of height and weight
#barplot shpould be used in its palce
#barplot
barplot(x,col=1:4)
barplot(x,col=1:4, horiz = T)

#correlation plot
pairs(women)
cor(women$height,women$weight) #correlation between women height and weight
cov(women$height,women$weight) #covariance between he heights and weights
head(mtcars)
?mtcars

cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)