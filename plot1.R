url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "household_power_consumption.zip")
unzip("household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
#filter_data
selected_dates <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02", ]
selected_dates$DateTime <- strptime(paste(selected_dates$Date, selected_dates$Time), format = "%Y-%m-%d %H:%M:%S") 

#polt1
png("plot1.png", width = 480, height = 480)
hist(selected_dates$Global_active_power, col= "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()