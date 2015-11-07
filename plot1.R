### Course: Exploratory Data Analysis
### Project 1: plot 1
### Date: 11/4/2015

#Estimate the memory size requrements, assuming 8bits for one cell.
size=8*9*2075259/1E9
size # in Gb

#Since the file size is pretty big, the data file will be loaded
#from line 69517 to 66638 including header for 2007-02-01-2007-02-02
powerdata <- read.table("data/household_power_consumption.txt", sep=";", skip =66638, nrow=2879)
names(powerdata)<- colnames(read.table("data/household_power_consumption.txt", sep=";",nrow = 1, header = TRUE))
temp <- powerdata
#using base plotting system to make plots to examine Global active Power
png("plot1.png", width=480, height=480)
hist(temp$Global_active_power, 
     main="Global Active Power", 
     col = "red", 
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency")
dev.off()   
