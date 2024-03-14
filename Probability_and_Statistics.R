x=c(-1,0,1)
px=c(1/4,2/4,1/4)
#p(x<=0)=p(x=-1)+p(x=0)
px[1:2]

sum(px[1:2])
#p(x>=0)=p(x=0)+p(x=1)
sum(px[2:3])

x=c(-2,-1,0,1,2,3)
px=c(1/10,1/15,1/5,2/15,3/10,1/5)
#p(x<2)
sum(px[1:4])

#p(-2<x<2)
sum(px[2:4])

Ex=sum(x*px)
Ex
16/15
Ex2=sum(x^2*px)
varx=Ex2-(Ex)^2
varx

x=c(0,1,2,3,4,5,6,7)
px=c(0,1/10,2/10,2/10,3/10,1/100,2/100,17/100)
Ex=sum(x*px)
Ex
Ex2=sum(x^2*px)
varx=Ex2-(Ex)^2
varx

#p(1.5<x<4.5/x>2)
#sum(px[4:5])/sum(px[3:8])
sum(px[4:5])/sum(px[4:8])
5/7

#continuous distribution
#x>=0 (0,∞)
#f(x)=xe^(-(x^2)/2)
f=function(x){x*exp(-(x^2)/2)}
#check if it is pdf
f1=integrate(f,0,Inf)
f1
#p(0<x<10)
f2=integrate(f,0,10)
f2
#p(x<=4)
f3=integrate(f,0,5)
f3
#p(x>=20)
f4=integrate(f,20,Inf)
f4
#mean
fx=function(x){x*x*exp(-(x^2)/2)}
Ex=integrate(fx,0,Inf)
Ex
#Ex2
fx2=function(x){x^2*x*exp(-(x^2)/2)}
Ex2=integrate(fx2,0,Inf)
Ex2
#Variance
varx=Ex2$value-(Ex$value)^2
varx

#p(10<x<15 | x>5)
num=integrate(f,10,15)
num
den=integrate(f,5,Inf)
den
num$value/den$value

#new question
f=function(x){0.5*x^2*exp(-x)}
fx=function(x){x*0.5*x^2*exp(-x)}
Ex=integrate(fx,0,Inf)
Ex

fx2=function(x){x^2*0.5*x^2*exp(-x)}
Ex2=integrate(fx2,0,Inf)
Ex2
#Variance
varx=Ex2$value-(Ex$value)^2
varx

#new question
ft=function(t){t*3*(10^-9)*(t^2)*(100-t)^2}
ex=integrate(ft,60,70)
ex
val1=integrate(ft,60,70)
val2=integrate(ft,60,100)
val1$value/val2$value