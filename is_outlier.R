### Find outliers

is_outlier <- function(x) {
  return(x < quantile(x, 0.25) - 1.5 * IQR(x) | x > quantile(x, 0.75) + 1.5 * IQR(x))
}

###
sample1 <- data.frame(id= seq(1,15), val = c(0,0,1,2,3,4,5,10,11,12,13,14,89,90,95))
sample1[is_outlier(sample1$val),c('id','val')]


