#Deliverable 1
#load dplyr package
library(dplyr)

#read file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar)

#perform summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data= MechaCar))

#Deliverable 2
#read file
Suspension <- read.csv(file='Suspension_coil.csv',check.names=F,stringsAsFactors = F)

#Total Summarized DF
summarize_df <- Suspension %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

#create a lot summary
lot_df <- Suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=(PSI),Variance=var(PSI),SD=sd(PSI))

