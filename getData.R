if(!dir.exists("data")){
        url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(url, "power_consumption.zip")
        unzip("power_consumption.zip",exdir = "data")
        filename <- paste("data",list.files("data"),sep="/")
        powerdata <- read.table(filename, sep = ";", header = TRUE, na = "?",colClasses = c("character","character",rep("numeric",7)))        
}

#We will only be using data from the dates 2007-02-01 and 2007-02-02.
datefilter <- (powerdata$Date == "1/2/2007" | powerdata$Date == "2/2/2007")
plotdata <- powerdata[datefilter,]

# Create a variable to store date time data for time series plot
dateTime <- strptime(paste(plotdata$Date,plotdata$Time), "%d/%m/%Y %H:%M:%S")
