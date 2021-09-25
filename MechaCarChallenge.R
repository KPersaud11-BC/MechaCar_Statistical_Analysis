#Deliverable 1: Linear Regression to Predict MPG

library(dplyr) #Use the library() function to load the dplyr package

MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #Import and read in the MechaCar_mpg.csv file as a dataframe

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table)) #generate summary statistics

#Deliverable 2: Create Visualizations for the Trip Analysis

Coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #Import and read in the Suspension_Coil.csv file as a table

total_summary <- summarize(Coil_table, Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD = sd(PSI)) 
#creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil's PSI column

lot_summary <- Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD = sd(PSI))
#creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

#Deliverable 3: T-Tests on Suspension Coils

#t-test for all lots
t.test((Coil_table$PSI),mu = 1500)

# t-test for each lot

t.test(subset(Coil_table,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(Coil_table,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(Coil_table,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)