#-----------------------------------------------------------------
# sample1.R script
#-----------------------------------------------------------------
marks	<- 	c(71,72,63,54,45,30,15,80,90,99)
assign("id",seq(1:10))
pass	<-	"Passed"
fail	<-	"Failed"
result	<-	ifelse(marks > 70, pass,fail)
tbl_result	<-	data.frame(id, marks, result)
print(tbl_result) 



