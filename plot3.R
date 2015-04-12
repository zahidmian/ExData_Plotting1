power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
power.sub <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
power.sub$DateTime <- paste(power.sub$Date, power.sub$Time, setp=" ")
power.sub$DateTime <- strptime(power.sub$DateTime, format="%d/%m/%Y %H:%M:%S")

png(file="plot3.png", width=480, height=480)
plot(power.sub$DateTime, power.sub$Sub_metering_1, type="l", xlab="", ylab="Energy sub meetering")
lines(power.sub$DateTime, power.sub$Sub_metering_2, type="l", col="red")
lines(power.sub$DateTime, power.sub$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_meeting_1", "Sub_meeting_2", "Sub_meeting_3"), lty=c(1,1,1), col=c("black", "red", "blue"))

dev.off()
