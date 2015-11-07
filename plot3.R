### Course: Exploratory Data Analysis
### Project 1: plot 3
### Date: 11/4/2015
powerdata <- read.table("data/household_power_consumption.txt", sep=";", skip =66638, nrow=2879)
names(powerdata)<- colnames(read.table("data/household_power_consumption.txt", sep=";",nrow = 1, header = TRUE))

temp <- powerdata
temp$timex <- strptime(paste(temp$Date, temp$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
tail(temp)
png("plot3.png", width=480, height=480)
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
dev.off()
