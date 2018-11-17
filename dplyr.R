(rollno= 1:30)
(sname = paste('student', 1:30,sep=''))
(gender=sample(c('M','F'), size=30, replace=T, prob = c(0.7,0.3)))
(marks1= floor(rnorm(30,40,5)))
(marks2= ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30,replace=T,prob=c(0.5,0.5)))
#create dataframe
df1= data.frame(rollno, sname, gender, marks1, marks2, course, stringsAsFactors = F)
df1$gender=factor(df1$gender)
df1$course=factor(df1$course)
df1
install.packages('dplyr')
library(dplyr)
df1
df1 %>% group_by(gender) %>% summarise(MEanM1=mean(marks1), MeanM2=mean(marks2), MaxM1=max(marks1))
summarise(df1,MEanM1=mean(marks1), MeanM2=mean(marks2), MaxM1=max(marks1))
mtcars
table(mtcars$gear)
table(mtcars$cyl, mtcars$am)
table(mtcars$cyl, mtcars$am, mtcars$vs)
xtabs(~cyl + am +vs, data=mtcars)
mtcars %>% group_by(gear,cyl)%>% summarize(meanMPG=mean(mpg)) %>%
  arrange(desc(meanMPG))
mtcars %>% select(mpg,wt) %>% slice(seq(1,32,2))
mtcars %>% filter(mpg >25 & hp<60) %>% select(mpg,wt,hp,am)                                                                         
mtcars %>% sample_frac(.2)
