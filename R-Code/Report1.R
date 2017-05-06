install.packages("ggplot2")
library(ggplot2)
library(dplyr)
library(reshape2)

immigrants <- read.csv(file = "Immigrants-USA.csv", stringsAsFactors = FALSE)
immigrantsSummary<- immigrants %>% 
  group_by(AreaName) %>% 
  summarise(X1980 = sum(X1980), X1990 = sum(X1990), X2000 = sum(X2000),
            X2010 = sum(X2010))
immigrantsSummary 
names(immigrantsSummary) <- c('AreaName','1980','1990', '2000', '2010')
meltedSummary <- melt(immigrantsSummary[,c('AreaName','1980','1990', '2000', '2010')],id.vars = 1)
names(meltedSummary) <- c('AreaName','Year','Immigrants')
ggplot(meltedSummary,aes(x = AreaName,y = Immigrants)) + 
  geom_bar(aes(fill = Year),stat = "identity",position = "dodge")+ 
  theme(axis.text.x=element_text(angle=90,hjust=1), 
        panel.background = element_blank()) +
  theme(axis.line.x = element_line(color="black"),
        axis.line.y = element_line(color="black"))+
  xlab("Continents/Regions") + ylab("Number of Immigrants") + 
  ggtitle("Number of Immigrants coming to US during 1980-2010") 
