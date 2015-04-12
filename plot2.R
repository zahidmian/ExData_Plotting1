power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
power.sub <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
power.sub$DateTime <- paste(power.sub$Date, power.sub$Time, setp=" ")
power.sub$DateTime <- strptime(power.sub$DateTime, format="%d/%m/%Y %H:%M:%S")
#plot(power.sub$DateTime, power.sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

png(file="plot2.png", width=480, height=480)
plot(power.sub$DateTime, power.sub$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

