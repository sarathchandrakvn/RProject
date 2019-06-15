
setwd("/Users/sarath.chandra/Desktop/Study/Residency")

doctorVisits <- read.csv("dataset_DoctorContacts.csv")

summary (doctorVisits)

View(doctorVisits)

age <- doctorVisits[13]

View(age)

length(age)

mdu <- doctorVisits[2]

length(mdu)

View(mdu)

df <- data.frame(age,mdu)

plot(df)

install.packages("mosaic")

library("mosaic")

install.packages("ggplot2")
