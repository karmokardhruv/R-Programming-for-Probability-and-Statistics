#Binomial Distribution
# p(X==x) = nCx * (p^x) * (q^(n-x))
#dbinom(x,n,p)

n=10
p=0.2
#p(x=4)=10C4*(0.4)^4*(0.8)^6
dbinom(4,10,0.2)

#Cumulative Probability (upto that point)
#pbinom(x,n,p)

# Calculating Inverse Point 
# Eg - When P(X<=k) = 0.95, find k
#qbinom(pr,n,p)

# Generate N Number of Random Variable
#rbinom(N,n,p)

//
  
#Poisson Distribution
#dpois(x,λ)

#Cumulative Probability 
#ppois(x,λ)  
  
#Calculating Inverse Point 
#qpois(pr,λ)
  
#Generate N Number of Random Variable
#rpois(N,λ)

//

#Normal Distribution
#dnorm(x,µ,σ)

#Cumulative Distribution
#pnorm(x,µ,σ)

#Calculating Inverse Point 
#qnorm(pr,µ,σ)

#Generate N Number of Random Variable
#rnorm(N,µ,σ)


#Practice (Binomial Distribution)
# A biased coin is tossed 6 times. The probablity of heads on any toss is 0.3. Let X denote the number of heads taht come up. Calculate :-

#P(X=2)
dbinom(2,6,0.3)

#P(X<=3)
pbinom(3,6,0.3)

#P(1<X<=5) = P(X=2)+P(X=3)+P(X=4)+P(X=5)
x=c(2,3,4,5)
sum(dbinom(x,6,0.3))

#Or P(X<=5) - P(X<=1)
pbinom(5,6,0.3) - pbinom(1,6,0.3)


#New Question
# The incidence of a certain disease is such that 20% of workers suffer from it. If 10 workers are selected at random, find the probablity that
# 1. Exactly 2 workers suffer from the disease
dbinom(2,10,0.2)

# 2. Not more than 2 workers suffer from the disease
pbinom(2,10,0.2)


#New Question
# Bottled sweet milk stored in a godown is reported to have gone sour. A test check has revealed that milk in 25 % of the bottles is bad and thus unfit for consumption. The salesman at a retail outlet offers 5 bottles for sale on demand. Find the probablity that milk will be unfit for consumption
# 1. exactly in 2 bottles
dbinom(2,5,0.25)

# 2. at least in 2 bottles
# P(X>=2) = 1 - P(X<=1)
1-pbinom(1,5,0.25)

# 3. at most in 2 bottles
pbinom(2,5,0.25)

# 4. between 2 and 4 bottles
pbinom(4,5,0.25) - pbinom(1,5,0.25)


#Practice (Poisson Distribution)

#Q1: Consider a Computer System with Poisson job arrival stream at an average of 2 per minute. Determine the probablity that in any one minute interval there will be
#(i) zero jobs
dpois(0,2)

#(ii) exactly 3 jobs
dpois(3,2)

#(iii) at most 3 jobs
ppois(3,2)

#(iv) less than 3 job arrivals
ppois(2,2)

#Q2: # The number of calls coming per minute into a hotel reservation center is a Poisson random variable with mean 3. 
#(i)Find the probability that no calls come in a given one minute period
dpois(0,3)

#(ii)Find the probability that at least two calls will arrive in a given one minute period
1-ppois(1,3)

#Practice (Normal Distribution)

#Q1.Find the area corresponding to
#(i) P(0<=Z<=1.96)
# here mean and standard deviation is default = 1 and 0
pnorm(1.96)-pnorm(0)

#(ii) P(-0.87<=Z<=0)
pnorm(0)-pnorm(-0.87)

#(iii) P(-2.1<=Z<=1.2)
pnorm(1.2)-pnorm(-2.1)

#(iv) P(Z>=2.1)
1 - pnorm(2.1)

#(v) P(Z <= -1.2)
pnorm(-1.2)

#(vi) P(Z<=2.6)
pnorm(2.6)

#(vii) P(1<=Z<=2)
pnorm(2)-pnorm(1)

#Q2.  Given a standard normal distribution, find the value of k such that
#(a) P(Z>k) = 0.3015  Ans.(0.52)
1-0.3015
qnorm(0.6985)  

#(b) P(k<Z<-0.18) = 0.4197 Ans.(-2.37)
pnorm(-0.18)
pnorm(-0.18)-0.4197

qnorm(0.00887628)

#Q4. Given a normal distribution with U=40 and S=6, find the value of X that has
#(a) P(X<=k) = 0.45 (45% of the area to the left)
qnorm(0.45,40,6)

#(b) P(X>=k) = 0.14 (14% of the area to the right)
#    P(X<=k) = 0.86
1 - 0.14
qnorm(0.86,40,6)

#Q5. The loaves of bread distributed to local stores by a certain bakery have an average length of 30 cms and a standard deviation of 2 cms. Assuming that the lengths are normally distributed, what percentage of the loaves are
#(a) P(X>=31.7) = 1 - P(X<=31.7) (longer than 31.7)
1 - pnorm(31.7,30,2)

#(b) between 29.3 and 33.5 cms in length
pnorm(33.5,30,2) - pnorm(29.3,30,2)

#(c) shorter than 25.5 cms
pnorm(25.5,30,2)


#Q6. A lawyer commutes daily from his home to office. The average time for a one-way trip is 24minutes, with a standard deviation of 3.8 minutes. Assume the trip times are normally distributed
#(i). What is the probability that a trip will take at least 1/2 an hour
1 - pnorm(30,24,3.8)

#(ii). If the office opens at 9:00 AM and the lawyer leaves his house at 8:45 AM daily, what percentage of the time is he late wfor work
1 - pnorm(15,24,3.8)

#(iii). If he leaves the house at 8:35 AM and coffee is served at the office from 8:50 AM until 9:00 AM, what is the probability that he misses coffee
1 - pnorm(25,24,3.8)

#Q7. Given the normally distributed variable X with mean 18 and standard deviation 2.5, find
# (i) P(X<15), P(17<X<21)
pnorm(15,18,2.5)
pnorm(21,18,2.5) - pnorm(17,18,2.5)

# (ii) the value of k such that P(X<k) = 0.2236
qnorm(0.2236,18,2.5)

# (iii) the value of k such that P(X>k) = 0.1814
1 - 0.1814
qnorm(0.8186,18,2.5)