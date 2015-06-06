### plot 4
png(filename = "plot4.png")
par(mfrow = c(2,2))
household_power_consumption <- read.table('household_power_subset.txt', sep=";", header=TRUE)
dateTime <- as.POSIXlt(paste(as.Date(household_power_consumption$Date, format="%d/%m/%Y"), household_power_consumption$Time, sep=" "))

# plot 1:
plot(dateTime, household_power_consumption$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", main = "", xlab="")

# plot 2:
plot(dateTime, household_power_consumption$Voltage, type="l", ylab="Voltage", main="")

# plot 3:
plot(dateTime, household_power_consumption$Sub_metering_1, type = "n", ylab = "Energy sub metering", main = "", xlab="")
points(dateTime, household_power_consumption$Sub_metering_1, type = "l")
points(dateTime, household_power_consumption$Sub_metering_2, col = "red", type = "l")
points(dateTime, household_power_consumption$Sub_metering_3, col = "blue", type = "l")
legend("topright", c("Sub metering 1", "Sub metering 2", "Sub metering 3"), lty=c(1,1,1),lwd=c(2.5,2.5),col=c("black", "red", "blue"))

# plot 4:
plot(dateTime, household_power_consumption$Global_reactive_power, type="l", ylab="Global reactive power", main="")

dev.off()