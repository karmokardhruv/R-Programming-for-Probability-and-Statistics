
Question:

Tests made on the breaking strength of 10 pieces of a metal gave the following results: 578, 572, 570, 568, 572, 570, 570, 572, 596, and 584 kg. Test if the mean breaking strength of the wire can be assumed as 577 kg

x=c(578,572,570,568,572,570,570,572,596,584)
t.test(x,mu=577,alternative = "two.sided")

#TYPE I      TYPE II
#Statistic < table value (accept Ho)
#p value   > LOS (accept Ho)
# 0.528    > 0.01 (accept Ho)

mtcars

x=mtcars$wt
t.test(x,mu=5,alternative = "two.sided")

#Mean = 5 Not true

t.test(x,mu=4,alternative = "two.sided")

t.test(x,mu=3,alternative = "two.sided")

t.test(x,mu=2,alternative = "two.sided")

#q2
A certain injection administered to 12 patients resulted in the following changes of blood pressure: 5, 2, 8, -1, 3, 0, 6, -2, 1, 5, 0, 4. Also check the following.
Can it be concluded that the injection will be in general accompanied by an increase in blood pressure?
y=c(5,2,8,-1,3,0,6,-2,1,5,0,4)
t.test(y,mu=0,alternative = "greater")
#p value = 0.007
#LOS = 0.01
#p value < LOS
#Reject Ho
#Conclusion : Injection increased the BP

#Q3
The heights of 10 males of a given locality are found to be 175, 168, 155, 170, 152, 170, 175, 160, 160, 165 cm. Based on this sample of 10 observations test the hypothesis that the mean height of males is 170cm
x=c(175,168,155,170,152,170,175,160,160,165)
t.test(x,conf.level=0.95)


#q4:
Two independent samples of sizes 8 and 7 gave the following results.
Sample 1: 19 17 15 21 16 18 16 14

Sample 2: 15 14 15 19 15 18 16

Is the difference between sample means significant.
x=c(19,17,15,21,16,18,16,14)
y=c(15,14,15,19,15,18,16)
t.test(x,y)

#q5
The following data represent the biological values of protein from cow’s milk and buffalo’s milk:
Cow’s milk 1.82 2.02 1.88 1.61 1.81 1.54
Buffalo’s milk 2.00 1.83 1.86 2.03 2.19 1.88
Examine whether the average values of protein in the two samples significantly differ at 5% level.
x=c(1.82,2.02,1.88,1.61,1.81,1.54)
y=c(2.00,1.83,1.86,2.03,2.19,1.88)
t.test(x,y)
#Ho is accepted

#q6:
The following data relate to the marks obtained by 11 students in two sets, one held atthe beginning of a year and the other at the end of the year after intensive coaching. Dothe data indicate that the students have benefited by coaching at 5 % level of significance?
Test I : 19 23 16 24 17 18 20 18 21 19 20
Test II : 17 24 20 24 20 22 20 20 18 22 19
x=c(19,23,16,24,17,18,20,18,21,19,20)
y=c(17,24,20,24,20,22,20,20,18,22,19)
t.test(x,y, alternative="less")
#Ho is accepted
#Students have not benefited from the coaching


