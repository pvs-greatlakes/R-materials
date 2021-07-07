A <- c(510,500,495,480,520,485,510,500,495,480,520,485,510,500,
495,480,520,485,500,505,501,502,498,490,512,498,505,504,491,489)
#
B <- c(610,580,595,580,620,595,610,600,598,580,620,595,610,600,
608,607,608,605,600,605,601,602,598,599,612,598,605,604,591,596)
#
mean_life_A 	<- mean(A);sd_A <- sd(A)
mean_life_B 	<- mean(B);sd_B <- sd(B)
#
CV_A			<- (sd_A / mean_life_A) * 100
CV_B			<- (sd_B / mean_life_B) * 100
#
range_A 		<- range(A);range_B <- range(B)
#
cat("\n Range of Bulb life in hours for type","A:",range_A,
"Coefficient of variation",CV_A,"\n",sep=" ")
#
cat("\n Range of Bulb life in hours for type","B:",range_B,
"Coefficient of variation",CV_B,"\n",sep=" ")
#
ifelse(CV_A>CV_B,print("Variation is less in B"),print("Variation is less in A"))


