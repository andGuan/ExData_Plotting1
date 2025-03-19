#plot3
png("plot3.png", width = 480, height = 480)
plot(selected_dates$DateTime, selected_dates$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
lines(selected_dates$DateTime, selected_dates$Sub_metering_2, col = "red")
lines(selected_dates$DateTime, selected_dates$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()