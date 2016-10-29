library(lubridate)

data <- read.csv("household_power_consumption.txt",sep=";")
data <- subset(data, Date == '2/2/2007' | Date == '1/2/2007')
head(data)
str(data)
png('plot1.png', width=480, height=480)
hist(as.double(as.character(data$Global_active_power)),col="red", xlab = "Global Active Power (kilowatts) ",main = "Global Active Power")
dev.off()
