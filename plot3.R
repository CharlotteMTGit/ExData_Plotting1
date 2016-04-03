##Exploratory Data Analysis - Assignment 1 
## Plot 3
setwd("~/Desktop/ExploratoryDataAnalysis/")
assignment1<-"household_power_consumption.txt"
data<-read.table(assignment1,header=TRUE,sep=";",stringsAsFactors=FALSE,dec=".")
subsetAssignment<-data[data$Date %in% c("1/2/2007","2/2/2007"),]

datetime <- strptime(paste(subsetAssignment$Date, subsetAssignment$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

activePower<-as.numeric(subsetAssignment$Global_active_power)

subset1 <- as.numeric(subsetAssignment$Sub_metering_1)
subset2 <- as.numeric(subsetAssignment$Sub_metering_2)
subset3 <- as.numeric(subsetAssignment$Sub_metering_3)


png("plot3.png",width=480,height=480)
plot(datetime,subset1,type="l",xlab="",ylab="Energy Submetering")
lines(datetime,subset2,type="l",xlab="",ylab="Energy Submetering",col="red")
lines(datetime,subset3,type="l",xlab="",ylab="Energy Submetering",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,lwd=2.5,col=c("black","red","blue"))
dev.off()
