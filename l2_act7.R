# =======================================================================
# Function describe() - example 
# =======================================================================
# Check if the package psych is already installed
if ("psych" %in% rownames(installed.packages()) == FALSE)
{ install.packages("psych")}
require(psych)
# 
data(iris)
print(describe(iris))