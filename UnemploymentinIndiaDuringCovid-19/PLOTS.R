install.packages("ggplot2")
library(ggplot2)
Unemployment= read.csv("Unemployment in India.csv")
Unemployment
ggplot(data= Unemployment)
ggplot(data=Unemployment,aes(y=Estimated.Unemployment.Rate....,x=..Region))

#scatter plot
ggplot(data=Unemployment,aes(y=Estimated.Unemployment.Rate....,x=..Region,col=..Region))+geom_point()

#histograms
ggplot(data=Unemployment,aes(x=Estimated.Unemployment.Rate....))+geom_histogram(bins=100,fill="pink",col="red")

#boxplot
ggplot(data=Unemployment,aes(x=Ã..Region,y=Estimated.Unemployment.Rate....,fill=Area))+geom_boxplot()

ggplot(data=Unemployment,aes(x=..Region,y=Estimated.Unemployment.Rate....,fill=Area))+geom_boxplot()->obj1
obj1+labs(title="Region w.r.t Estimated Unemployment Rate",x="Region",y="Estimated Unemployment Rate",fill="Area")->obj2
obj2+theme(panel.background = element_rect(fill = "pink"))->obj3
obj3+theme(plot.title = element_text(hjust = 0.5,face = "bold",color = "blue"))->obj4
obj4+theme(plot.background = element_rect(fill = "yellow"))

ggplot(data=Unemployment,aes(y=Estimated.Unemployment.Rate....,x=..Region,col=..Region))+geom_point()->lay1
lay1+theme(panel.background = element_rect(fill="lemonchiffon2"))->lay2
lay2+theme(plot.background = element_rect(fill = "lightcoral"))->lay3
lay3+labs(title = "Estimated Unemployment Rate w.r.t Region",x="Region",y="Estimated Unemployment Rate",fill="Region")->lay4
lay4+theme(plot.title = element_text(hjust = 0.5,face = "bold"))

ggplot(data=Unemployment,aes(x=Estimated.Unemployment.Rate....))+geom_histogram(bins=100,fill="pink",col="red")->b1
b1+labs(title = "Estimated Unemployment Rate",x="Estimated Unemployment Rate")->b2
b2+theme(plot.title = element_text(hjust = 0.5,face = "bold"))

