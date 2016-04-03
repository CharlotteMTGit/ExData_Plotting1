##Exploratory Data Analysis - Assignment 1 
## Plot 2
setwd("~/Desktop/ExploratoryDataAnalysis/")
assignment1<-"household_power_consumption.txt"
data<-read.table(assignment1,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
subsetAssignment<-data[data$Date %in% c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(subsetAssignment$Date, subsetAssignment$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot2<-as.numeric(subsetAssignment$Global_active_power)
png("plot2.png",width=480,height=480)
plot(datetime,plot2,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.off()
