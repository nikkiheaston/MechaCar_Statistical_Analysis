#Deliverable 1
library(dplyr)

Mecha_car <- read.csv('MechaCar_mpg.csv')

Mecha_lm <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,Mecha_car)

summary(Mecha_lm)

#Deliverable 2
suspension_coil <- read.csv('Suspension_Coil.csv',stringsAsFactors = F)

total_summary <- suspension_coil %>%
  summarise(Mean = mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sd(PSI))

lot_summary <- suspension_coil %>%
  group_by(Manufacturing_Lot) %>% summarise(Mean = mean(PSI),Median=median(PSI),Variance=var(PSI),SD = sd(PSI))


#Deliverable 3
t.test(lot_summary$Mean,mu=1500)

Lot1 <- subset(suspension_coil, Manufacturing_Lot == 'Lot1', select = PSI)
t.test(Lot1,mu=1500)

Lot2 <- subset(suspension_coil, Manufacturing_Lot == 'Lot2', select = PSI)
t.test(Lot2, mu=1500)

Lot3 <- subset(suspension_coil, Manufacturing_Lot == 'Lot3', select = PSI)
t.test(Lot3, mu=1500)