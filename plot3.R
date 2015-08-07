# Loading the data
source("data_loading.R")

# Opening the file
png("plot3.png", width=4, height=4, units="in", res=300)

# Setting general settings
par(mar=c(4, 4.1, 3.1, 1.5))

# Plotting
plot(data_subset$Sub_metering_1 ~ date_col, type ="l", xlab = "", ylab = "Energy sub metering", ylim=sub_metering_range)

lines(data_subset$Sub_metering_2 ~ date_col, col="red")
lines(data_subset$Sub_metering_3 ~ date_col, col="blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex = 0.53, col=c("black", "red", "blue"), lty=c(1,1,1))

# Closing the file
dev.off()
