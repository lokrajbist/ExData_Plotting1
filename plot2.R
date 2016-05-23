powerConsumptionDataFile <- "household_power_consumption.txt"
powerConsumptionData <- read.table(powerConsumptionDataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetofPowerConsumptionData <- powerConsumptionData[powerConsumptionData$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetofPowerConsumptionData)
datetime <- strptime(paste(subSetofPowerConsumptionData$Date, subSetofPowerConsumptionData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetofPowerConsumptionData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower,, col="burlywood2", type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()