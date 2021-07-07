#-------------------------------------------------------------------------------
# l3_act2.R
#-------------------------------------------------------------------------------
marks_students	<- read.csv(file="BTech_IT_Final_year_marks.csv",head=TRUE) 
sno			<-   seq(1,length(marks_students$Marks.in.Paper.1))
m1			<-	marks_students$Marks.in.Paper.1
m2			<-	marks_students$Marks.in.Paper.2
m3			<-	marks_students$Marks.in.Paper.3
m4			<-	marks_students$Marks.in.Paper.4
m5			<-	marks_students$Marks.in.Paper.5
pass			<-	"Pass"
fail			<-	"Fail"
res1			<-	ifelse(m1 < 50,FALSE,TRUE)
res2			<-	ifelse(m2 < 50,FALSE,TRUE)
res3			<-	ifelse(m3 < 50,FALSE,TRUE)
res4			<-	ifelse(m4 < 50,FALSE,TRUE)
res5			<-	ifelse(m5 < 50,FALSE,TRUE)
f_res 		<- 	res1 & res2 &res3 & res4 & res5
final_res 		<- 	ifelse(f_res,pass,fail) 
my_df			<- 	cbind(sno,marks_students,final_res)
#
# Write title of the report
#
write(cat(sprintf("            Tabulated Marks Register for B.Tech IT Final Year students \n\n 
           Total number of students is %d \n\n",length(sno)),
file="Tabulated_Marks.csv",sep=" ",append = FALSE))
#
write.table(my_df,file="Tabulated_Marks.csv",sep=",",append = TRUE,
row.names = FALSE,col.names=c("S.No","Roll Number","Name","Marks in Paper 1",
"Marks in Paper 2","Marks in Paper 3","Marks in Paper 4",
"Marks in Paper 5","Result"),quote=FALSE,eol="\n")
#-------------------------------------------------------------------------------



