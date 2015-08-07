# Loading the data
source("data_loading.R")

# Opening the file
png("plot4.png", width=4, height=4, units="in", res=300)

# Setting general settings
par(mfrow=c(2,2), oma=c(0,0,0,0), mar=c(3,3.5,0.6,0.2), mgp=c(3,0.5,0))

# Plotting
# Top left
plot(data_subset$Global_active_power ~ date_col, type = "l", ylab="", cex.axis=0.7)
mtext(side=2, text = "Global Active Power (kilowatts)", cex=0.5, line = 1.5)

# Top right
plot(data_subset$Voltage ~ date_col, type = "l", xlab = "datetime", ylab = "", cex.lab=0.7, cex.axis=0.7)
mtext(side=2, text = "Voltage", cex=0.5, line = 1.5)
mtext(side=1, text = "datetime", cex=0.5, line = 1.5)

# Bottom left
plot(data_subset$Sub_metering_1 ~ date_col, type ="l", ylab = "", ylim=sub_metering_range, cex.lab=0.7, cex.axis=0.7)
mtext(side=2, text = "Energy sub metering", cex=0.5, line = 1.5)
lines(data_subset$Sub_metering_2 ~ date_col, col="red")
lines(data_subset$Sub_metering_3 ~ date_col, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex = 0.55, col=c("black", "red", "blue"), lty=c(1,1,1), bty="n")

# Bottom right
plot(data_subset$Global_reactive_power ~ date_col, type = "l", xlab = "datetime", ylab = "", cex.lab=0.7, cex.axis=0.7)
mtext(side=2, text = "Global_reactive_power", cex=0.5, line = 1.5)
mtext(side=1, text = "datetime", cex=0.5, line = 1.5)

# Closing the file
dev.off()