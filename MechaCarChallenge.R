###Deliverable 1###
# import dplyr package

library(dplyr)

# load csv and read as DataFrame
mechaCar_mgp <- read.csv(file='Resources/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(mechaCar_mgp)

# Perform linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp)

# Use summary statistics to determine p-value and r-squared value
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechaCar_mgp))

###Deliverable 2###

# load csv and read as DataFrame
suspension_Coil <- read.csv(file='Resources/Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_Coil)

#statistics summary for mean, median, varies and stnd-dev. for PSI column
total_summary <- suspension_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(total_summary)

# crate dataFrame using group_by and summarize()
lot_summary <- suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
head(lot_summary)

###Deliverable 3###

# t-test to determine PSI across all lots is statistically different from pop. mean of 1500 psi
t.test(suspension_Coil$PSI, mu=1500)

# t-test for lot 1
t.test(subset(suspension_Coil, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)

# t-test for lot 2
t.test(subset(suspension_Coil, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
# t-test for lot 3
t.test(subset(suspension_Coil, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)
