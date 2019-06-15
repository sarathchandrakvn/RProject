
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

library(ggplot2)

table(doctorVisits$health)

barplot(table(doctorVisits$health))

ggplot(doctorVisits, aes(x = health, fill = sex)) + theme_bw() + geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) + labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")


ggplot(doctorVisits, aes(x = mdu, fill = health ,width=2)) + theme_bw() + geom_bar(position = "dodge")  + labs(y =  "counts", x= "MDU", title = "Bar Plot: Contacts With Medical Doctor")


