### plot1.R

household_power_consumption <- read.table('household_power_subset.txt', sep=";", header=TRUE)
png(filename = "plot1.png")
par(mfrow = c(1,1))
hist(household_power_consumption$Global_active_power, col="red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()