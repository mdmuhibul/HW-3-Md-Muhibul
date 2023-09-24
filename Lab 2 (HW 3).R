
#Econ B2000, MA, ECONOMETRICS
#Fall 2023
#Lab 2
#Md Muhibul Islam

load("Household_Pulse_data_w57.RData")
summary(Household_Pulse_data)
attach(Household_Pulse_data)
dim(Household_Pulse_data)
library(tidyverse)
#Now I am going to split the sample into groups:

summary(Household_Pulse_data$RECVDVACC)
summary(RECVDVACC=='yes got vaxx')
summary(RECVDVACC=='no did not get vaxx')
summary(RECVDVACC=='NA')

#To pick a subset from original data:
Restrict <- (Household_Pulse_data$RECVDVACC=="yes got vaxx") | (Household_Pulse_data$RECVDVACC=="no did not get vaxx")
Vacvdatanew <- subset(Household_Pulse_data,Restrict)

Restrict1 <- (Household_Pulse_data$RECVDVACC=="yes got vaxx") | (Household_Pulse_data$PUBHLTH=="no public health ins")
data_new1 <-subset(Household_Pulse_data,Restrict1)
view(Restrict1)
summary(Restrict1)

Restrict2 <- (Household_Pulse_data$RECVDVACC=="no did not got vaxx") | (Household_Pulse_data$PUBHLTH=="has public health ins") 
data_new2 <-subset(Household_Pulse_data,Restrict2)
view(Restrict2)
summary(Restrict2)

Restrict3 <- (Household_Pulse_data$RECVDVACC=="yes got vaxx") | (Household_Pulse_data$PUBHLTH=="has public health ins")
data_new3 <-subset(Household_Pulse_data,Restrict3)
view(Restrict3)
summary(Restrict3)

restrict4 <- (Household_Pulse_data$RECVDVACC == 'no did not get vaxx') & (Household_Pulse_data$PUBHLTH == "no public health ins")
data_new4 <- subset(Household_Pulse_data,restrict4)
view(restrict4)
summary(restrict4)

#Comparing those two reasonable groups, what is the size of the difference in outcome? 
#What is the standard error of that difference measure?


