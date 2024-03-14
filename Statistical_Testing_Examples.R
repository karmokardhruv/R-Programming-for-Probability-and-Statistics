#f-DISTRIBUTION
#Statistic
x1
x2
var.test(x1,x2)
#if pvalue>LOS
#accept H0
#else reject H0

Two independent samples of 8 and 7 items respectively had the following values:
1.sample - 9 ,11 ,13 ,11 ,15 ,9 ,12 ,14
2.sample - 10 ,12 ,10 ,14 ,9 ,8 ,10
is the difference between the means of sample significant?
  
x1=c(9,11,13,11,15,9,12,14)
x2=c(10,12,10,14,9,8,10)
var.test(x1,x2)
# p-value = 0.8315
#LOS = 0.05
#Accept H0


The nicotine content of two samples of tobacco were found to be as follows:  
Sample A : 24, 27, 26, 21, 25  and Sample B : 27, 30, 28, 31, 22, 36 
Can it be said that the two samples come from same variance?
  
x1=c(21,24,25,26,27)
x2=c(22,27,28,30,31,36)
var.test(x1,x2)


Test whether there is any significant difference between
the variances of the populations from which the following
samples are taken: 
Sample I: 20 16 26 27 23 22
Sample II: 27 33 42 35 32 34 38

x1=c(20,16,26,27,23,22,18,24,25,19)
x2=c(17,23,32,25,22,24,28,18,31,33,20,27)
var.test(x1,x2)
#Accept H0 , same variance

#same variance = var.test
#same mean = t.test


#x^2 - chisquare test
#H0=Both are independent
#H1= Both are dependent

x
chisq.test(x)


Based on the following data, can you say that there is no relation between smoking and literacy.
            Smokers  Nonsmokers
Literates    83       57
Illiterates  45       68
            
x=matrix(c(83,57,45,68),nrow=2,byrow=T)
chisq.test(x)
#p-value = 0.003159
#LOS=0.05
#pvalue < LOS
#reject H0
#There is dependency between smoking and literacy

x=matrix(c(2,10,8,4),nrow=2,byrow=T)
chisq.test(x)
# p-value = 0.03843
#LOS=0.05
#pvalue < LOS
#reject H0
#There is dependency between innoculation and survival




A total number of 3759 individuals were interviewed according to gender and decision in a public opinion survey on a political proposal with the results as in the following table. Use a 0.05 level of signiﬁcance and test the hypothesis that there is no association between gender and attitude.
Decision Favoured Opposed Undecided Male 1154 475 243 Female 1103 442 342

x=matrix(c(1154,475,243,1103,442,342),nrow=2,byrow=T)
chisq.test(x)
#p-value = 7.358e-05
#LOS=0.05
#pvalue < LOS
#reject H0
#There is some association between gender and attitude


#Annova
#Analysis of variance
#for 2 attributes : chisquare test
#for more than 2 samples (test whether mean of all samples are equal or not): annova
#H1=all sample means differ significantly
#H0=x1=x2=x3
#command = aov()

y=c(5,4,3,7,5,1,3,4,1,7)
t=c('A','B','C','A','C','C','A','B','A','B')
t=factor(t,labels=c('A','B','C'))
x=data.frame(y,t)
aov(y~t,data=x)
summary(aov(y~t,data=x))
x
# 0.566 > 0.05
#Accept H0

#h0 is accepted 
#when statistic < table value
#or
#p value > LOS



The following table shows the lives in hours of four brands of electric lamps brand
A 1610 1610 1650 1680 1700 1720 1800
B 1580 1640 1640 1700 1750 -
C 1460 1550 1600 1620 1640 1660 1740 1820
D 1510 1520 1530 1570 1600 1680
Perform an analysis of variance and test the homogeneity of the mean lives of the four brands of lamps

l=c(1610,1610,1650,1680,1700,1720,1800,1580,1640,1640,1700,1750,1460,1550,1600,1620,1640,1660,1740,1820,1510,1520,1530,1570,1600,1680)
b=c('A','A','A','A','A','A','A','B','B','B','B','B','C','C','C','C','C','C','C','C','D','D','D','D','D','D')
b=factor(b,labels=c('A','B','C','D'))
x=data.frame(l,b)
x
aov(l~b,data=x)
summary(aov(l~b,data=x))
# pvalue = 0.115
#pvalue > 0.05

#H0:B1=B2=B3=B4
#H1:R1=R2=R3=R4



w=c(1.9,2.2,2.6,1.8,2.1,2.5,1.9,2.3,2.6,2.2,1.7,1.9,2.2,2.0,2.1,2.1,1.8,2.5,2.3,2.4)
b=c('B1','B2','B3','B4','B5','B1','B2','B3','B4','B5','B1','B2','B3','B4','B5','B1','B2','B3','B4','B5')
r=c('R1','R1','R1','R1','R1','R2','R2','R2','R2','R2','R3','R3','R3','R3','R3','R4','R4','R4','R4','R4')
b=factor(b,labels=c('B1','B2','B3','B4','B5'))
r=factor(r,labels=c('R1','R2','R3','R4'))
x=data.frame(w,b,r)
x
summary(aov(w~b+r,data=x))
