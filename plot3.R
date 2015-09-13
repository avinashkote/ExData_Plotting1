setwd("C:/Avinash/Coursera/ExploratoryDataAnalysis/Project1")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "exdata_data_household_power_consumption.zip")
unzip(zipfile = "exdata_data_household_power_consumption.zip", exdir = "C:/Avinash/Coursera/ExploratoryDataAnalysis/Project1" , overwrite = TRUE)
gap <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors=FALSE, dec=".")
gapss <- gap[gap$Date %in% c("1/2/2007","2/2/2007"),] 

xwday <- strptime(paste(gapss$Date, gapss$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
ysbm1 <- as.numeric(gapss$Sub_metering_1)
ysbm2 <- as.numeric(gapss$Sub_metering_2)
ysbm3 <- as.numeric(gapss$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(xwday , ysbm1 , type = "l", xlab = "", ylab = "Energy Submetering")
lines(xwday, ysbm2 , type="l", col="red")
lines(xwday, ysbm3 , type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))
dev.off()