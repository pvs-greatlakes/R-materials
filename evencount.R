# Function to count the number of even integers in a vector a
evencount <- function(a) {
  i <- 0
  for (j in a) {
    if (j %% 2 == 0) i <- i +1
  }
  return(i)
}
evencount(c(1,2,3,4,5,6,7,8,9,10,11,12))