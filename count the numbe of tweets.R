install.packages(lubridate)
library(lubridate)
library(ggplot2)

#read tweeter file
tweeter<-read.csv("GRAND merge.csv", header = TRUE, sep = "," )
#set the format of the dates
created.date<-as.Date(tweeter$created,"%m/%d/%Y")
#remove non dates data
temp<-created.date[!is.na(created.date)]
#reset date data
created.date<-temp
#counts the number of tweets created on the same day
numTweets<-data.frame(table(created.date))
#rename the column names
colnames(numTweets)<-c("Date","Count")

numTweets$Date<-factor(numTweets$Date)
ggplot(numTweets, aes(x=Date, y=Count,group=1)) + geom_line()+
  labs(title="Tweet Volume for all diabetes-related tweets",x="Date",y="Number of Tweets")+
  theme(axis.text.x  = element_text(angle=45, size=10,vjust=0.5),
        plot.title = element_text(colour = "black", face = "bold",size = 20,vjust = 1))

#dev.off()
