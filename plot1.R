# Loading the data
source("data_loading.R")

# Opening the file
png("plot1.png", width=4, height=4, units="in", res=300)

# Setting general settings
par(mar=c(4, 4.1, 3.1, 1.5))

# Plotting
hist(data_subset$Global_active_power, col = "red", main = "", xlab = "", ylab = "", xaxt = "n", yaxt = "n")

mtext(side=1, text = "Global Active Power (kilowatts)", cex=0.7, line = 2)
mtext(side=2, text = "Frequency", cex=0.7, line = 2.5)
mtext(side=3, text = "Global Active Power", cex=1.5, line = 1)

axis(side=1, at=c(0, 2, 4, 6), labels=c(0, 2, 4, 6), cex.axis=0.6)
axis(side=2, at=c(0, 200, 400, 600, 800, 1000, 1200), labels=c(0, 200, 400, 600, 800, 1000, 1200), cex.axis=0.6)

# Closing the file
dev.off()