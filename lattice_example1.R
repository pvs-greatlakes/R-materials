#
## lattice package example
#
if("lattice" %in% rownames(installed.packages()) == FALSE)
{ install.packages("lattice")}
library(lattice)
attach(mtcars)

# Create factors with value labels
gear.f	<-	factor(gear, levels = c(3,4,5), 
			labels = c("3-gears","4-gears","5-gears"))
cyl.f		<-	factor(cyl, levels = c(4,6,8), 
			labels = c("4cyl","6cyl","8cyl"))
#
# boxplots for each combination of two factors 
bwplot(cyl.f~mpg|gear.f,
  	ylab="Cylinders", xlab="Miles per Gallon", 
   main="Mileage by Cylinders and Gears", 
   layout=(c(1,3)))
mpg