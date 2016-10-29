library(lubridate)

data <- read.csv("household_power_consumption.txt",sep=";")
data <- subset(data, Date == '2/2/2007' | Date == '1/2/2007')
head(data)
str(data)

data$DateTime <- strptime(paste(dmy(data$Date), data$Time), format= "%Y-%m-%d %H:%M:%S")

png('plot2.png', width=480, height=480)
with(data, plot(DateTime, Global_active_power, type="l"))
dev.off()
