setwd("C:/Avinash/Coursera/ExploratoryDataAnalysis/Project1")
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, destfile = "exdata_data_household_power_consumption.zip")
unzip(zipfile = "exdata_data_household_power_consumption.zip", exdir = "C:/Avinash/Coursera/ExploratoryDataAnalysis/Project1" , overwrite = TRUE)
gap <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors=FALSE, dec=".")
gapss <- gap[gap$Date %in% c("1/2/2007","2/2/2007"),] 
fgap <- as.numeric(gapss$Global_active_power)
png("plot1.png", width=480, height=480)
hist(fgap, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
