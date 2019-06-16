install.packages("mosaic")
dm <- read.csv("dataset_DoctorContacts.csv",na.strings = "")
View(dm)
library(ggplot2)
summary(dm)

tally(~mdu,data=dm,margins=TRUE)
summary(dm)

tally(~sex,data=dm,margins=TRUE)
tally(~(sex),data=dm,margins=TRUE,format="perc")

tally(~child,data=dm,margins=TRUE)
tally(~(child),data=dm,margins=TRUE,format="perc")

tally(~black,data=dm,margins=TRUE)
tally(~(black),data=dm,margins=TRUE,format="perc")

tally(~physlim,data=dm,margins=TRUE)
tally(~(physlim),data=dm,margins=TRUE,format="perc")

tally(~idp,data=dm,margins=TRUE)
tally(~(idp),data=dm,margins=TRUE,format="perc")


#	Describe the fields of the dataset.
# What Fransis Given us
#Contacts With Medical Doctor


#dd <- read.csv("dataset_DoctorContacts.csv",na.strings = "")
###############################################

ggplot(dm, aes(x = health, fill = sex)) + theme_bw() + 
  geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) 
+ labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = lfam, fill = sex)) + theme_bw() + geom_histogram() + 
  facet_wrap(~idp+physlim+child) + labs(y = "Frequency", x = "Family Income",
                                        title = "Histogram: Contacts With Medical Doctor")

ggplot(dm, aes(x = health, y = lfam, fill = sex)) + theme_bw() + 
geom_boxplot() + facet_wrap(~idp+physlim+child) + 
  labs(y = "Price", x = "Health",  title = "Boxplot: Contacts With Medical Doctor")

ggplot(dm, aes(x = lfam, y = fmde, shape=sex, col=sex)) +
  facet_wrap(~idp+physlim+child) + theme_bw() + geom_point() + 
  geom_smooth(method="lm",se=F) + labs(y = "Medical Deductible Expenditure",
        x = "Family Size", title = "Scatter Plot: Contacts With Medical Doctor")
###############################################

ggplot(dm, aes(x= sex , fill = mdu)) + theme_bw() + 
  geom_bar(position = "dodge")  + 
  labs(y =  "No.Of Visit", x= "Health", 
       title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = health, fill = black)) + theme_bw() + 
  geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) 
+ labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = educdec, fill = sex)) + theme_bw() + 
  geom_bar(position = "dodge") + facet_wrap(~physlim+child) 
+ labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = health, fill = sex)) + theme_bw() + geom_bar(position = "dodge") + facet_wrap(~physlim) + labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = health, fill = sex)) + theme_bw() +  geom_bar(position = "dodge") + facet_wrap(~child) + labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = mdu, fill = sex)) + theme_bw() + geom_bar(position = "dodge") + facet_wrap(~physlim) + labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")

ggplot(dm, aes(x = educdec, fill = sex)) + theme_bw() + geom_histogram() + 
  facet_wrap(~idp+physlim+child) + labs(y = "Frequency", x = "Family Income",
                                        title = "Histogram: Contacts With Medical Doctor")








ggplot(dm, aes(x = health, fill = sex)) + theme_bw() + 
  geom_bar(position = "dodge") + facet_wrap(~(physlim=="TRUE")+(educdec==16)) 
+ labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")



ggplot(dm, aes(x = ndisease, fill = health)) + theme_bw() + 
  geom_bar(position = "dodge") + facet_wrap(~idp+physlim+child) 
+ labs(y =  "counts", x= "Health", title = "Bar Plot: Contacts With Medical Doctor")







