#
## Pie chart example
#
# Define cars vector with 5 values
cars		<-	c(1, 3, 6, 4, 9)

# Define some colors ideal for black and white print
colors	<-	c("white","grey70","grey90","grey50","black")

# Calculate the percentage for each day, rounded to one decimal place
cars_labels	<-	round(cars/sum(cars) * 100,1)

# Concentrate a '%' char after each value
car_lables	<-	paste(car_labels, "%", sep="")

# Create a pie chart with defined heading and custom colors and labels
pie(cars, main = "Cars", col = colors, labels = car_labels, cex = 0.8)

# Create a legend at the right
legend(1.5, 0.5, c("Mon","Tue","Wed","Thu","Fri"), cex = 0.8,fill = colors)
