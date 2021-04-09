dataset1 <-read.csv('Unemployment_Rate_upto_11_2020.csv')
dataset1
dataset2 <-read.csv('Unemployment in India.csv')
dataset2

attach(dataset1)
#Hypothesis 1: In dataset i m likely to check if Estimated unemployment rate is independent of the region or not
table(Estimated.Unemployment.Rate.... ,Region.1)
summary(table(Estimated.Unemployment.Rate.... ,Region.1))
#Here, its clearly visible that the p-value is 0.358>0.05 which shows independence between region and estimated unemployment rate

#hypothesis 2: Checking for normality for estimated unemployment rate
shapiro.test(Estimated.Employed)
#Here p value is 8.539e-15>0.05 which shows that the following population could be normally distributed
shapiro.test(Estimated.Labour.Participation.Rate....)
#Here p value is 2.873e-11>0.05 which shows that the following population could be normally distributed

#hypothesis 3: Checking for corelation for normally distributed population using pearson test
cor.test(Estimated.Employed ,Estimated.Labour.Participation.Rate....)
#Here p-value is 0.4352>0.05 which shows correlation is not significant
