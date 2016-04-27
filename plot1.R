#Load data
source("getData.R")

# Set graphics device to png with height and width equal to 480
png("plot1.png", height = 480, width = 480)

# plot histogram of global active power with x label and main title
hist(plotdata$Global_active_power, xlab = "Global Active power (kilowatts)", col = "red", main = "Global Active Power")

# close the graphics device
dev.off()
