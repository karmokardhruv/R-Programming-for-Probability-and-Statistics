x=c(1,2,3)
y=c(2,4,6)
cor(x,y)

adv=c(39,65,62,90,82,75,25,98,36,78)
sales=c(47,53,58,86,62,68,60,91,51,84)
cor(adv,sales)
plot(adv,sales)

x=c(1,2,3)
y=c(2,4,6)
lm(y~x)
lm(x~y)

sale=c(91,97,108,121,67,124,51,73,111,57)
purc=c(71,75,69,97,70,91,39,61,80,47)
lm(purc~sale)
lm(sale~purc)
cor(sale,purc)
plot(sale,purc)
abline(lm(purc~sale))

plot(purc,sale)
abline(lm(sale~purc))
#abline(lm(purc~sale)) (this is wrong)

p=c(25,28,35,32,31,36,29,38,34,32)
q=c(43,46,49,41,36,32,31,30,33,39)
lm(q~p)
lm(p~q)
cor(p,q)

plot(p,q)
abline(lm(q~p))

plot(q,p)
abline(lm(p~q))

-0.6643*30+59.2571 #when market economics is given

t=c(14,19,24,21,26,22,15,20,19)
s=c(31,36,48,37,50,45,33,41,39)


lm(t~s)
1.608*28+7.833
lm(s~t)
0.5578*30-2.3121

cor(t,s)