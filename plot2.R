# Loading the data
source("data_loading.R")

# Opening the file
png("plot2.png", width=4, height=4, units="in", res=300)

# Setting general settings
par(mar=c(4, 4.1, 3.1, 1.5))

# Plotting
plot(data_subset$Global_active_power ~ date_col, xlab = "", ylab = "Global Active Power (kilowatts)", type = "l")

# Closing the file
dev.off()