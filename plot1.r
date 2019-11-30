setwd("C:/DataScience/course-4/exdata_data_household_power_consumption")
#Reading, naming and subsetting power consumption data
dataFile <- "C:\\DataScience\\course-4\\exdata_data_household_power_consumption\\household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
#calling the basic plot function
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
# annotating graph
title(main="Global Active Power")
dev.off()

