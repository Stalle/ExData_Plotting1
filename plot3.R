household_power_consumption <- read.table('household_power_subset.txt', sep=";", header=TRUE)
dateTime <- as.POSIXlt(paste(as.Date(household_power_consumption$Date, format="%d/%m/%Y"), household_power_consumption$Time, sep=" "))
png(filename = "plot3.png")
par(mfrow = c(1,1))
plot(dateTime, household_power_consumption$Sub_metering_1, type = "n", ylab = "Energy sub metering", main = "", xlab="")
points(dateTime, household_power_consumption$Sub_metering_1, type = "l")
points(dateTime, household_power_consumption$Sub_metering_2, col = "red", type = "l")
points(dateTime, household_power_consumption$Sub_metering_3, col = "blue", type = "l")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1),lwd=c(2.5,2.5),col=c("black", "red", "blue"))
dev.off()
