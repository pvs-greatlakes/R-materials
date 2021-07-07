#specify the packages of interest

packages <- c("rpart","Deducer","caret","plyr","scales","ROCR","knitr","rpart.plot","caTools","DMwR","RGtk2","rattle")

#use this function to check if each package is on the local machine
#if a package is installed, it will be loaded
#if any are not, the missing package(s) will be installed and loaded

package.check <- lapply(packages, FUN = function(x) {
    if (!require(x, character.only = TRUE)) {
        install.packages(x, dependencies = TRUE,repos='http://cran.us.r-project.org')
        library(x, character.only = TRUE)
    }
})

