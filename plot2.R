### Course: Exploratory Data Analysis
### Project 1: plot 2
### Date: 11/4/2015

#load data file from line 69517 to 66638 including header for 2007-02-01-2007-02-02
powerdata <- read.table("data/household_power_consumption.txt", sep=";", skip =66638, nrow=2879)
names(powerdata)<- colnames(read.table("data/household_power_consumption.txt", sep=";",nrow = 1, header = TRUE))

temp <- powerdata
temp$timex <- strptime(paste(temp$Date, temp$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
png("plot2.png", width=480, height=480)
plot(temp$timex,
     temp$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()