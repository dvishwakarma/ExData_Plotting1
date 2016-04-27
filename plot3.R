#Load data
source("getData.R")

# Set graphics device to png with height and width equal to 480
png(file="plot3.png", height = 480, width = 480)

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

# close the graphics device
dev.off()
