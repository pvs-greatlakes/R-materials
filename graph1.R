#----------------------------------------------------
#  Graph 1 - saving a graph
#----------------------------------------------------
attach(mtcars)
pdf("graph_1.pdf")
plot(wt, mpg)
abline(lm(mpg ~ wt))
title("Regression of MPG on weight")
dev.off()
detach(mtcars)
#