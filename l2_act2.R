# Function to find mode of a given data set
Mode	<- function(x) {
		ux	<- unique(x)
		uy	<- tabulate(match(x,ux))
		xm	<- cbind(ux,uy)[uy == max(uy),]
		if (class(xm) %in% c("numeric","character"))
			return(xm[1])
		else
			return(xm[,1])
}		
#------------------------------------------------------------
# To find mean, median and mode of data set
#------------------------------------------------------------
x <- c(27,36,28,18,35,26,20,35,40,26)
median(x) # to find the median of x
mean(x) # to find the mean of x
Mode(x) # to find the mode of x