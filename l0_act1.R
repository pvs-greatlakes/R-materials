main_dir	<- Sys.getenv("R_HOME")
sub_dir <- "library/base"
setwd(file.path(main_dir,sub_dir))
getwd()
file.show("INDEX")
