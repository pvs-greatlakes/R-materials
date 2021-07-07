#=============================================================================
## Solve Linear Program problem
#=============================================================================
#
#
#
## lp2.R
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
## Setup problem: Maxmimize
#     8 x1  +   5  x2  +  2 x3  subject to
#   50 x1  +   30 x2 + 20 x3   <= 800
#        x1  +       x2  +      x3   <= 20  
#       x1   +  1.2 x2 +  1.8 x3  <= 15
## ---------------------------------------------
f.obj 	<- c(8,5,2)
f.con 	<- matrix(c(50,30,20,1,1,1,1,1/1.2,1/1.8), nrow =3, byrow=TRUE)
f.dir	<- c("<=","<=","<=")
f.rhs	<- c(800,20,15)
#
## Execute the program
#
lp_ans	<-	lp("max",f.obj, f.con, f.dir, f.rhs)
#
zx1 	<-	lp_ans$solution[1]
zx2 	<-	lp_ans$solution[2]
zx3 	<-	lp_ans$solution[3]
#
z		<-	8 * zx1 + 5 * zx2 +  2 * zx3
#
cat("\n\n  The solution is given below:\n")
cat("x1 = ",zx1,"\n")
cat("x2 = ",zx2,"\n")
cat("x3 = ",zx3,"\n")
cat("\n Max Objective Function  value is",z,"\n\n")
#


