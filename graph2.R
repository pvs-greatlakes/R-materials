#-----------------------------------------------------------------------
# Example of a pie chart
#-----------------------------------------------------------------------
# Define cars vector with 5 values
attach(mtcars)
cars		<-	c(1,3,6,4,9)
#
# Define some colours
colors	<-	c("red","blue","green","black","white")
#
# Calculate the percentage for each day, rounded to one decimal place
#
car_labels	<-	round(cars/sum(cars) * 100,1)
#
# Concatenate a % char after each value
#
car_labels	<-	paste(car_labels,"%"," count ",cars,sep="")
#
# Create a pie chart with defined heading and custom colors and labels
#
pie(cars, main="Cars", col=colors, labels = car_labels,
cex = 0.8)
#
# Create a legend at the right
#
legend(1.5,0.5, c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"), cex = 0.8,
fill = colors) 