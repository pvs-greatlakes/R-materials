#------------------------------------------------------------------
# graphs 3 - Box plot
#------------------------------------------------------------------
# Box plot of MPG by car cylinders
boxplot(mpg ~ cyl, data = mtcars, 
main = "Car Mileage Data",
xlab = "Number of Cylinders",
ylab = "Miles per Gallon")
#
