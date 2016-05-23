powerConsumptionDataFile <- "household_power_consumption.txt"
powerConsumptionData <- read.table(powerConsumptionDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetofPowerConsumptionData <- powerConsumptionData[powerConsumptionData$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetofPowerConsumptionData)
globalActivePower <- as.numeric(subSetofPowerConsumptionData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="burlywood2", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()