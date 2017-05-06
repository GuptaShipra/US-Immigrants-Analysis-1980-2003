install.packages("ggplot2")
library(ggplot2)
immigrants <- read.csv(file = "Immigrants-USA.csv", stringsAsFactors = FALSE)
colnames(immigrants)

sum1980 <- sum(immigrants$X1980)
sum1981 <- sum(immigrants$X1981)
sum1982 <- sum(immigrants$X1982)
sum1983 <- sum(immigrants$X1983)
sum1984 <- sum(immigrants$X1984)
sum1985 <- sum(immigrants$X1985)
sum1986 <- sum(immigrants$X1986)
sum1987 <- sum(immigrants$X1987)
sum1988 <- sum(immigrants$X1988)
sum1989 <- sum(immigrants$X1989)
sum1990 <- sum(immigrants$X1990)
sum1991 <- sum(immigrants$X1991)
sum1992 <- sum(immigrants$X1992)
sum1993 <- sum(immigrants$X1993)
sum1994 <- sum(immigrants$X1994)
sum1995 <- sum(immigrants$X1995)
sum1996 <- sum(immigrants$X1996)
sum1997 <- sum(immigrants$X1997)
sum1998 <- sum(immigrants$X1998)
sum1999 <- sum(immigrants$X1999)
sum2000 <- sum(immigrants$X2000)
sum2001 <- sum(immigrants$X2001)
sum2002 <- sum(immigrants$X2002)
sum2003 <- sum(immigrants$X2003)
sum2004 <- sum(immigrants$X2004)
sum2005 <- sum(immigrants$X2005)
sum2006 <- sum(immigrants$X2006)
sum2007 <- sum(immigrants$X2007)
sum2008 <- sum(immigrants$X2008)
sum2009 <- sum(immigrants$X2009)
sum2010 <- sum(immigrants$X2010)
sum2011 <- sum(immigrants$X2011)
sum2012 <- sum(immigrants$X2012)
sum2013 <- sum(immigrants$X2013)
year <- c(1980, 1981, 1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013)
immigrants <- c(sum1980, sum1981, sum1982, sum1983, sum1984, sum1985, sum1986, sum1987, sum1988, sum1989, sum1990, sum1991, sum1992, sum1993, sum1994, sum1995, sum1996, sum1997, sum1998, sum1999, sum2000, sum2001, sum2002, sum2003, sum2004, sum2005, sum2006, sum2007, sum2008, sum2009, sum2010, sum2011, sum2012, sum2013)
numberOfImmigrants <- data.frame(year, immigrants)
numberOfImmigrants

ggplot(numberOfImmigrants, aes(year, immigrants)) +   
  scale_y_continuous(expand = c(0,0)) +
  geom_bar( aes(fill = immigrants),position = "dodge", stat="identity") +
  scale_x_continuous(breaks=year) + 
  theme(axis.text.x=element_text(angle=90,hjust=1), 
        panel.background = element_blank()) +
  theme(axis.line.x = element_line(color="black"),
        axis.line.y = element_line(color="black"))+
  xlab("Years") + ylab("Number of Immigrants") + 
  ggtitle("Number of Immigrants coming to US during 1980-2013") 