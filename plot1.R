power <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
power.sub <- subset(power, Date %in% c("1/2/2007", "2/2/2007"))
# hist(power.sub$Global_active_power, col="red", xlab="Global Active Power (kilowats)")
png(file="plot1.png", width=480, height=480)
hist(power.sub$Global_active_power, col="red", xlab="Global Active Power (kilowats)", main="Global Active Power")
dev.off()

