basic_fn<-	function(x) 
{
	switch(x,
	"mean" = { Ans <- mean(y); cat("mean",Ans,sep=" ","\n")},
	"median" = { Ans <- median(y); cat("median",Ans,sep=" ","\n")},
	"sd" = { Ans <- sd(y); cat("sd",Ans,sep=" ","\n")}
	)
}

