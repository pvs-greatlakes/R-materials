require(graphics)
sales <- c(100,120,130,140,150,160,
170,180,190,200,210,220,230,240,250,
260,270,290,300,310,320,330,340,360)
options(digits=5)
za <- ts(sales,start=c(2010,1),frequency=12)
za.hw <- HoltWinters(za)
cat("\n Sales for 2012 - Jan to Dec:",predict(za.hw,n.ahead=12),"\n",sep=", ")
plot(za,xlim=c(2010,2016),ylim=c(100,1200),ylab="Monthly Sales",
xlab="Year",main = "Trend line from 2010 to 2016")
grid()
lines(predict(za.hw,n.ahead=60),col="red")