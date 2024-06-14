# creating a Metropolis hasting's sampler for a laplace distribution

library(stats)
library(NormalLaplace)
library(EnvStats)

x<-c()

xk<-5




for(i in 1:10000){
  
  y<-rnl(1,xk,1)
  y_prob<- dnorm(y,0,1)
  x_prob<- dnorm(xk,0,1)
  p<-y_prob/x_prob
  if ((p>=1 )|| (runif(1,0,1)<=p)){
    xk<-y
    x<-rbind(x,y)
    
  }
  else{
    x<-rbind(x,xk)

  }
  
  
}
x<-tail(x,5000)
z<-gofTest(x)
