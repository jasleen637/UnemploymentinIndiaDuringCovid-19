library(ggplot2)
Unemployment1= read.csv("Unemployment_Rate_upto_11_2020.csv")
Unemployment1
ggplot(data= Unemployment1)
#scatter plot
ggplot(data=Unemployment1,aes(y=Estimated.Unemployment.Rate....,x=Region,col=Region))+geom_point()

#histograms
ggplot(data=Unemployment1,aes(x=Estimated.Unemployment.Rate....))+geom_histogram(bins=100,fill="pink",col="red")

ggplot(data=Unemployment1,aes(x=Estimated.Unemployment.Rate....,col=Date))+geom_freqpoly(bins=100)

ggplot(data = Unemployment1,aes(Date,Estimated.Unemployment.Rate....))+geom_line()+labs(title = "Unemployment status in different months")

ggplot(data=Unemployment1,aes(y=Estimated.Unemployment.Rate....,x=Region,col=Region))+geom_point()->la1
la1+theme(panel.background = element_rect(fill="lemonchiffon2"))->la2
la2+theme(plot.background = element_rect(fill = "lightcoral"))->la3
la3+labs(title = "Estimated Unemployment Rate w.r.t Region",x="Region",y="Estimated Unemployment Rate",fill="Region")->la4
la4+theme(plot.title = element_text(hjust = 0.5,face = "bold"))

ggplot(data=Unemployment1,aes(x=Estimated.Unemployment.Rate....))+geom_histogram(bins=100,fill="pink",col="red")->ba1
ba1+labs(title = "Estimated Unemployment Rate During Covid-19",x="Estimated Unemployment Rate")->ba2
ba2+theme(plot.title = element_text(hjust = 0.5,face = "bold"))

