### Course: Exploratory Data Analysis
### Project 1: plot 4
### Date: 11/4/2015
powerdata <- read.table("data/household_power_consumption.txt", sep=";", skip =66638, nrow=2879)
names(powerdata)<- colnames(read.table("data/household_power_consumption.txt", sep=";",nrow = 1, header = TRUE))

temp <- powerdata
temp$timex <- strptime(paste(temp$Date, temp$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
tail(temp)
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2))
#panel 1.1
plot(temp$timex,
     temp$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
#panel 1.2
plot(temp$timex,
     temp$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")
#panel 2.1
plot(temp$timex,
     temp$Sub_metering_1,
     type="l",
     xlab="",
     ylab="Energy sub metering")
lines(temp$timex, temp$Sub_metering_2, type="l", col="red")
lines(temp$timex, temp$Sub_metering_3, type="l", col="blue")
legend("topright", 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1,col=c("black", "red", "blue"))
#panel 2.2
plot(temp$timex,
     temp$Global_reactive_power,
     type="l",
     xlab="datetime",
     ylab="Global_reactive_power")
dev.off()
