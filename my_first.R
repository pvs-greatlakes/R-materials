#
# Sample script
#
ht           		<- 	c(1.68,1.69,1.70,1.72,1.75,1.76,1.73,1.80,1.82,1.83) # ht in cms
c(65,58,63,67,72,75,80,65,74,68) -> 	wt # wt in Kgs
assign("ref_id",1:10)
bmi                     <- wt / (ht ^2)
tbl  <- data.frame(ref_id,ht,wt,bmi)
# print(tbl)
obese <- "obese"
not_obese <- "Not obese"
obs   <- ifelse(tbl$bmi > 25,obese,not_obese)
tbl_new   <- data.frame(ref_id,ht,wt,bmi,obs)        
print(tbl_new)
mean_ht <- mean(ht)  # mean of height of Gym participants
mean_wt <- mean(wt)  # mean of weight of Gym participants
sd_ht   <- sd(ht)    # standard deviation of height Gym participants
sd_wt   <- sd(wt)    # standard deviation of weight Gym participants
print(mean_ht) # display the mean height of Gym participants
print(mean_wt) # display the mean weight of Gym participants
print(sd_ht) # display the mean height of Gym participants
print(sd_wt) # display the mean weight of Gym participants
