## Peer-graded Assignment: Course Project 1 - Plot 1

setwd("C:/Users/user/datasciencecoursera/ExData_Plotting1")

source("load_format_data.R")

## Load the data:
dataset <- load_format_data()

## Generate the histogram and save as a .png file:
png('plot1.png', width=480, height=480)
hist(dataset$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="red") #, freq=FALSE)
dev.off()