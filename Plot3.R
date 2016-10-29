library(lubridate)

data <- read.csv("household_power_consumption.txt",sep=";")
data <- subset(data, Date == '2/2/2007' | Date == '1/2/2007')
head(data)
str(data)

data$DateTime <- strptime(paste(dmy(data$Date), data$Time), format= "%Y-%m-%d %H:%M:%S")
png('plot3.png', width=480, height=480)


with(data, plot(DateTime, as.double(as.character(Sub_metering_1)), type="l", ylab = "Energy sub metering", xlab=""))
with(data, lines(DateTime, as.double(as.character(Sub_metering_2)), type="l", col="red"))
with(data, lines(DateTime, as.double(as.character(Sub_metering_3)), type="l", col="blue"))

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col =c("black","red","blue"),lty=c(1,1,1),cex=0.8,text.width=45000)
dev.off()
