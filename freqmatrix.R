#********************************************************************
## Writing a function 
## Goal: Calculate cumulative frequency and more than  frequency
#********************************************************************
freqmatrix <- function(x) {
	cumfrq = cumsum(x)
	sumv = sum(x)
	morethanfrq = sumv
	xlen = length(x)
	revcumfrq = rep(0, xlen)
	for (i in 1:xlen) {
		revcumfrq[i] = morethanfrq
		morethanfrq = morethanfrq - x[i]
	}
#	
	m = as.matrix(cbind(x, cumfrq,revcumfrq))
	return(m)
}
#
## Call the function 
#
a = c(1,4,5,6,7,8,8,10,11,12,13)
freqmatrix(a)
##
#### 					End	of       script