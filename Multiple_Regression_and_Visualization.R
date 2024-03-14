x1=c(4,6,7,9,13,15)
x2=c(15,12,8,6,4,3)
x3=c(30,24,20,14,10,4)
lm(x1~x2+x3) #multiple regression

lm(x2~x1+x3)

#packages --> install scatterplot3d, tick the check box

scatterplot3d(x1,x2,x3)
graph=scatterplot3d(x1,x2,x3)
graph$plane3d(lm(x3~x1+x2))

lm(x3~x1+x2)

graph=scatterplot3d(x2,x3,x1)
graph$plane3d(lm(x1~x2+x3))

mtcars
#In mtcars dataset, express mpg in terms of wt and gear. Also visualise the corresponding multiple regression along the point

#x1=mtcars$mpg
#x2=mtcars$wt
#x3=mtcars$gear
lm(mtcars$mpg~mtcars$wt+mtcars$gear)
graph=scatterplot3d(mtcars$wt,mtcars$gear,mtcars$mpg)
graph$plane3d(lm(mtcars$mpg~mtcars$wt+mtcars$gear))


iris
#express sepal length in terms of sepal width and petal length
y1=iris$Sepal.Length
y2=iris$Sepal.Width
y3=iris$Petal.Length

lm(y1~y2+y3)
graph=scatterplot3d(y2,y3,y1)
graph$plane3d(lm(y1~y2+y3))

