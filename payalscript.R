install.packages("mosaic")
dm <- read.csv("dataset_DoctorContacts.csv",na.strings = "")
View(dm)
library(ggplot2)
summary(dm)
tally(~sex,data=dm,margins=TRUE)
tally(~mdu,data=dm,margins=TRUE)
summary(dm)
tally(~(health),data=dm,margins=TRUE,format="perc")
#	Describe the fields of the dataset.
# What Fransis Given us
Contacts With Medical Doctor

dd <- read.csv("dataset_DoctorContacts.csv",na.strings = "")

ggplot(dd, aes(x = health, fill = sex)) + theme_bw() + geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) + labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dd, aes(x = lfam, fill = sex)) + theme_bw() + geom_histogram() + facet_wrap(~idp+physlim+child) + labs(y = "Frequency", x = "Family Income",  title = "Histogram: Contacts With Medical Doctor")

ggplot(dd, aes(x = health, y = lfam, fill = sex)) + theme_bw() + geom_boxplot() + facet_wrap(~idp+physlim+child) + labs(y = "Price", x = "Health",  title = "Boxplot: Contacts With Medical Doctor")

ggplot(dd, aes(x = lfam, y = fmde, shape=sex, col=sex)) + facet_wrap(~idp+physlim+child) + theme_bw() + geom_point() + geom_smooth(method="lm",se=F) + labs(y = "Medical Deductible Expenditure", x = "Family Size", title = "Scatter Plot: Contacts With Medical Doctor")

