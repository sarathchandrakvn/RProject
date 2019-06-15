
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

ggplot(doctorVisits, aes(x = mdu, fill = sex)) + theme_bw() + geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) + labs(y =  "counts", x= "Number of Visits made", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(doctorVisits, aes(x = sex, fill = mdu) )+ theme_bw() + geom_bar(position = "dodge")  + labs(y =  "counts", x= "MDU", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(doctorVisits, aes(x = mdu, fill = sex)) + theme_bw() + geom_histogram() +  labs(y = "Frequency", x = "Family Income",  title = "Histogram: Contacts With Medical Doctor")

ggplot(doctorVisits, aes(x = mdu, y = lfam, fill = sex)) + theme_bw() + geom_boxplot() + facet_wrap(~idp+physlim+child) + labs(y = "Price", x = "Health",  title = "Boxplot: Contacts With Medical Doctor")

ggplot(doctorVisits, aes(x = mdu, y = age,col=age))   + theme_bw() + geom_point() + geom_smooth(method="lm",se=F) + labs(y = "Medical Deductible Expenditure", x = "MDU Size", title = "Scatter Plot: Contacts With Medical Doctor")


