performance_measure <- function(cm) {
	n = sum(cm) # number of instances
	diag1 = diag(cm) # number of correctly classified instances per class
	colsums1 = apply(cm, 2, sum) # number of predictions per class
	rowsums1 = apply(cm, 1, sum) # number of instances per class

# Accuracy Ratio

	accuracy1 = round((sum(diag1) / n),4)

      misclassification = 1 - accuracy1

#Precision = TP/TP+FP

	precision1 = diag1 / colsums1 

# Recall = TP/TP+FN

	recall1 = diag1 / rowsums1 

### F1 score 

	f11 = round(2 * ((precision1 * recall1) / (precision1 + recall1)),4)

	result <- list(accuracy = accuracy1, F1 = f11,errorrate = misclassification)
	
return(result) 
}


#create some data

install.packages("SDMTools")
library("SDMTools")
##
obs = c(sample(c(0,1),20,replace=TRUE),NA); obs = obs[order(obs)]
pred = runif(length(obs),0,1); pred = pred[order(pred)]

#calculate the confusion matrix
cm <- confusion.matrix(obs,pred,threshold=0.5)
performance_measure(cm)