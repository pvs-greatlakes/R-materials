#------------------------------------------------------------
# Histogram
#------------------------------------------------------------
x 		<- 	c(4,4,6,10,16)
boundaries	<- 	c(0,4,8,12,16) 	
max_num	<-	max(x)
h		<-	hist(x,breaks=boundaries,xlim=c(4,max_num),
			right=F,main = "SUVs", las=1)
xfit		<-	seq(min(x),max(x),length=40)
yfit		<-	dnorm(xfit,mean=mean(x),sd=sd(x))
yfit		<-	yfit * diff(h$mids[1:2])*length(x)
lines(xfit,yfit,col="blue",lwd=2) 