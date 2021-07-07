#=============================================================================
## Solve Linear Program problem
#=============================================================================
#
#
#=============================================================================
# check if the package lpSolve alreasdy exists
#=============================================================================
#
if("lpSolve" %in% rownames(installed.packages()) == FALSE)
{ install.packages("lpSolve")}
#
library(lpSolve)
#
##---------------------------------------------
### Setup problem: Maxmimize
#
#     x1 + 9 x2 +    x3  subject to
#     x1 + 2 x2 +  3 x3  <= 9 
#   3 x1 + 2 x2 +  2 x3  <= 15
## ---------------------------------------------
f.obj 	<- c(1,9,1)
f.con 	<- matrix(c(1,2,3,3,2,2), nrow =2, byrow=TRUE)
f.dir	<- c("<=","<=")
f.rhs	<- c(9,15)
#
## Execute the program
#
lp_ans	<-	lp("max",f.obj, f.con, f.dir, f.rhs)
#
zx1 	<-	lp_ans$solution[1]
zx2 	<-	lp_ans$solution[2]
zx3 	<-	lp_ans$solution[3]
#
z		<-	zx1 + 9 * zx2 + zx3
#
cat("\n\n  The solution is given below:\n")
cat("x1 = ",zx1,"\n")
cat("x2 = ",zx2,"\n")
cat("x3 = ",zx3,"\n")
cat("\n Max Objective Function  value is",z,"\n\n")
#


