#Load data
source("getData.R")

# Set graphics device to png with height and width equal to 480
png(file="plot4.png", height = 480, width = 480)

# Set graphics window to two rows and two columns
par(mfrow= c(2,2))

#plot data in 1st row and 1st column
plot(dateTime, plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active power")
#plot data in 1st row and 2nd column
plot(dateTime, plotdata$Voltage, type="l",xlab="datetime",ylab = "Voltage")

#plot data in 2nd row and 1st column
#Plot the data Sub_metering_1 against datetime
plot(dateTime, plotdata$Sub_metering_1, type= "l", xlab="", ylab="Energy sub metering")
#Add line for Sub_metering_2 against datetime
lines(dateTime, plotdata$Sub_metering_2, col="red")
#Add line for Sub_metering_3 against datetime
lines(dateTime, plotdata$Sub_metering_3, col="blue")

#Add legend to graph
legend("topright", 
       col = c("black", "red", "blue"),
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = 1)

#plot data in 2nd row and 2nd column
plot(dateTime, plotdata$Global_reactive_power, type="l",xlab="datetime",ylab = "Global_reactive_power")

# close the graphics device
dev.off()
