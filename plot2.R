#plot2
png("plot2.png", width = 480, height = 480)
plot(selected_dates$DateTime, selected_dates$Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power (kilowatts)")
dev.off()