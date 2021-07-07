# =======================================================================
# read_excel.R - This program reads data from an Excel file in xlsx format into R
# =======================================================================
# Check if the package gdata is already installed
if ("gdata" %in% rownames(installed.packages()) == FALSE)
{ install.packages("gdata")}
require(gdata)
# 
dest_file		=	"D:/R_data/data_test1.xlsx"
# Read 10 rows of data and skip  blank lines from the worksheet data
dat_array		<-	read.xls(dest_file,sheet="data", nrows = 10, blank.lines.skip = T) 
# Retrieve only columns b and c
dat		<-	dat_array[,2:3]
cat("\n Column b:",dat$B,"\n")
cat("\n Column C:",dat$C,"\n")
# =======================================================================