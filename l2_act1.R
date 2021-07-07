# Program to generate ten random integers
# from the range of 1 to 100
id <- sort(sample(1:100, 10, replace = FALSE))
cat("\n selected ids ",id,"\n",sep=" ")