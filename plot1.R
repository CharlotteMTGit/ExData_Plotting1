## Exploratory Data Analysis- Assignment 1
setwd("~/Desktop/ExploratoryDataAnalysis/")
assignment1<-"household_power_consumption.txt"
data<-read.table(assignment1,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
subsetAssignment<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
dataforGraph<- as.numeric(subsetAssignment$Global_active_power)
png("plot1.png",width=480,height=480)
hist(dataforGraph,col="red",main="Global Active Power",xlab= "Global Active Power (kilowatts)")
dev.off()
