empid=c(501:510)
age=c(35,32,34,35,40,43,28,28,58,45)
gender=c(0,1,1,1,1,0,0,0,1,1)
status=c(2,2,2,3,3,2,3,3,2,2)

empinfo=data.frame(empid, age, gender, status)
empinfo

empinfo$gender=factor(empinfo$gender,labels=c("male","female"))
empinfo$gender

empinfo$status=factor(empinfo$status,labels=c("Staff","Faculty"))
empinfo

empmale=subset(empinfo,empinfo$gender=="male")
empmale

empstaff=subset(empinfo,empinfo$status=="Staff")
empstaff

empmalestaff=subset(empinfo,empinfo$gender=="male" & empinfo$status=="Staff")
empmalestaff

summary(empinfo)
                        
emptable=table(empinfo$gender,empinfo$status)
emptable

plot(empinfo$age)
pie(emptable)

pie(table(empinfo$gender))

boxplot(empinfo$gender~empinfo$status)

plot(empinfo$age,type='l')
plot(empinfo$age)

#create a dataset of your own with 5 variables and 10 entries
#2 numerical and 1 string, 2 factors
var1 = c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)  # Numerical variable 1
var2 = c(2, 4, 6, 8, 10, 12, 14, 16, 18, 20)  # Numerical variable 2
var3 = c("red", "blue", "green", "yellow", "orange", "red", "blue", "green", "yellow", "orange")  # String variable
var4 = factor(c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2), labels = c("Category A", "Category B"))  # Factor variable 1
var5 = factor(c(1, 1, 2, 2, 1, 1, 2, 2, 2, 2), labels = c("Low", "High"))  # Factor variable 2

custom_dataset <- data.frame(var1, var2, var3, var4, var5)
custom_dataset