Batting <- read.csv("Data/Baseball.csv")

Batting$playerID<-as.factor(Batting$playerID)
Batting$yearID<-as.factor(Batting$yearID)
Batting$stint<-as.factor(Batting$stint)
