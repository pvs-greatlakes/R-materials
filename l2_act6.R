# --------------------------------------------------------------------------------------------
# Simple linear regression example
# --------------------------------------------------------------------------------------------
x  		<- 	c(1.1, 2.3, 2.4, 3.5, 2.0, 4.0)
y  		<- 	c(4.5,6.4,6.7,7.4,5.7,7.5)
lmfit 	<- 	lm(y ~ x)
cat("\n y_est =",lmfit$coefficients[1],"+",
lmfit$coefficients[2],"* x","\n",sep=" ")
new_val 	<-	data.frame(x=3.1)
#
predict_y	<-	predict(lmfit,new_val,interval="prediction",level=0.95)
#
cat("\n  The predicted value for y when x = 3.1 grams is ",predict_y[1,"fit"],"\n\n",sep=" ")
cat("\n  We are 95% confident that the predicted value for the response variable") 
cat("\n  y_Est lies in the range",predict_y[1,"lwr"],"and",predict_y[1,"upr"],"\n",sep=" ")
#
cat("\n\n Strength of the relationship between x and y is ",
summary(lmfit)$r.squared*100,"%","\n",sep=" ")
# --------------------------------------------------------------------------------------------



