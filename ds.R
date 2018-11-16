# Data structures in R



# Vectors ----
x=1:10
x
(x1 = 1:20)
(x2=c(1:5,10,78))
class(x2)

(x3=letters[1:10])
(x3=c('a','b','c','abc'))
#ctrl+L to clear console
(x3=letters[10:1])
LETTERS[c(1:5,7,9)]
(x4=c(T,FALSE,TRUE,T,F))
class(x4)
(x5=c(3L,5L)) #creates integer type L
class(x5)
?seq
(x6= seq(0,100,by=0.5))
(x6= seq(100,10,by=-2))
ength(x6)
x6[20] #access 20th element from vector
x6[-1] #access all but 1st element
x6[c(2,4)]  #access 2nd and 4th 
x6[x6>30 & x6<40]

x7=x6[-(length(x6)-1)]
x8=c(x6,x7)
x8
sort(x6)
x6=x6-1
x6
x6= sample (1:50)
sort(x6)
x6
(sort(x6[-c(1,2)], decreasing = T))
sum(x6[x6<30 & x6<40])
x6[2:10]=99; x6
x6[x6<30 & x6<40]=999; x6
(x= seq(1,5, length.out=15)) # equal partitions within a range
x=NULL
?rnorm
(x1= rnorm(1000000, mean=50, sd=5))
plot(density(x1))
abline(v=mean(x1))
plot(density(x))
hist(x1, freq=F)
lines(density(x1), col=2) #superimpose curve with histogram
mean(x)

#matrix ----
(m1= matrix(100:111, nrow=4))
(m2= matrix(100:111, ncol=3, byrow=T))
class(m1)
attributes(m1)
#access elements of matrix
m1[1,]
m1[1,2:3]
m1[,-2]
m1[,-c(1,3)]
m1[m1>105 & m1<108]
#names of cols and rows

paste("C","D",sep="-")
(colnames(m1) = paste('c',1:3, sep=''))
(rownames(m1)= paste('r',1:4, sep=''))
attributes(m1)
#modify vectors
m2[m2>107]=999
m2
m1
colSums(m1);rowSums(m1)
colMeans(m1);rowMeans(m1)
cbind(m1,m2); rbind(m1,m2)
t(m1);m1
sweep(m1, MARGIN =1, STATS = c(2,3,4,5), FUN="+" ) #rowwise
addmargins(m1,c(1,2),mean)#add mean on both sides row and column
addmargins(m1,c(1,2),list(list))


#dataframe ----



#factors