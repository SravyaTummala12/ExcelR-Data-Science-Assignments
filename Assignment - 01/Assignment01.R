library(moments)
library(modeest)
library(car)
library(nortest)

#Answer To Q7

setwd("E:\\EXCELR DATASCIENCE COURSE\\Assignments\\Assignment - 01 (Basic Statistics L1)")
Q7 = read.csv("Q7.csv")

df=Q7[,2:4]

head(df)

summary(df)

var(df[,1])
var(df[,2])
var(df[,3])

sd(df[,1])
sd(df[,2])
sd(df[,3])

range(df$Points)
range(df$Score)
range(df$Weigh)

hist(df$Points)
hist(df$Score)
hist(df$Weigh)

#Answer To Q8

df1 = c(108, 110, 123, 134, 135, 145, 167, 187, 199)
mean(df1)

#Answer To Q9 (a)
df2= read.csv("Q9_a.csv")
head(df2)
skewness(df2[,2])
skewness(df2[,3])
kurtosis(df2[,2])
kurtosis(df2[,3])
hist(df2$speed,breaks = 30)
hist(df2$dist,breaks = 30)

#Answer To Q9 (b)
df3= read.csv("Q9_b.csv")
head(df3)
skewness(df3[,2])
skewness(df3[,3])
kurtosis(df3[,2])
kurtosis(df3[,3])
hist(df3$SP,breaks = 30)
hist(df3$WT,breaks = 30)

#Answer To Q11
qnorm(0.94)
qnorm(0.98)
qnorm(0.96)

qnorm(p = 0.94)
200+(1.55477359459685*(30/sqrt(2000)))  
200-(1.55477359459685*(30/sqrt(2000))) 

qnorm(p = 0.98)
200+(2.05374891063182*(30/sqrt(2000)))  
200-(2.05374891063182*(30/sqrt(2000))) 

qnorm(p = 0.96)
200+(1.75068607125217*(30/sqrt(2000)))  
200-(1.75068607125217*(30/sqrt(2000))) 

#Answer To Q12
df4 = c(34,36,36,38,38,39,39,40,40,41,41,41,41,42,42,45,49,56)
summary(df4)
var(df4)
sd(df4)
hist(df4)
shapiro.test(df4)

#Answer To Q20
df5 = read.csv("cars.csv")
head(df5)
# (a)
prop.table(table(df5$MPG>38))
# (b)
prop.table(table(df5$MPG<40))
# (c)
prop.table(table(df5$MPG < 50 & df5$MPG > 20))

#Answer To Q21 (a)
shapiro.test(df5$MPG)
hist(df5$MPG)

#Answer To Q21 (b)
df6 = read.csv("wc-at.csv")
head(df6)
shapiro.test(df6$AT)
hist(df6$AT)
shapiro.test(df6$Waist)
hist(df6$Waist)

#Answer To Q22
qnorm(p = 0.90)
qnorm(p = 0.94)
qnorm(p = 0.60)

#Answer To Q23
qt(c(.025, .975), df=25)
qt(c(.020, .980), df=25)
qt(c(.005, .995), df=25)

#Answer To Q24
(260-270)/(90/sqrt(18))
pt(-0.4714045,df = 17)
qt(c(.025, .975), df=17)
