
# using rejection sampling for the laplace distribution

library(stats)
library(NormalLaplace)
u<-runif(1000,0,1)
z1<-rnl(1000,0,1)
z2<-c()

for(i in 1:length(u)){
  if(u[i]<dnorm(z1[i],0,1)/(1.53*dnl(z1[i],0,1))){
    z2<-rbind(z2,z1[i])
  }
}
print(length(z2))
