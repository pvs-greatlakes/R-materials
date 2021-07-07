# to find 1st, 2nd, 3rd quartile
# to find 5th and 95th percentile
x 	<- 	sample(1000,20)
m	<-	matrix(x,nrow=2,ncol=10,byrow= TRUE)
cat("\n 20 random integers are \n")
for (i in  1:2) {
	cat("\n Row i",i,"\n ",sep = " ")
	for (j in 1:10) {
		cat(m[i,j],":",sep = " ")
	}
	cat("\n -------------------------------------------------------\n")
}
q	<-	quantile(x,c(0.05,0.25,0.50,0.75,0.95))
print(q)