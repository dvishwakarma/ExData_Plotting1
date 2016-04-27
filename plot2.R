#Load data
source("getData.R")

# Set graphics device to png with height and width equal to 480
png(file="plot2.png", height = 480, width = 480)


#Plot the data 
plot(dateTime, plotdata$Global_active_power, type= "l", xlab="", ylab="Global Active Power (kilowatts)")

# close the graphics device
dev.off()
