## Peer-graded Assignment: Course Project 1 - Plot 3

setwd("C:/Users/user/datasciencecoursera/ExData_Plotting1")

source("load_format_data.R")

## Load the data:
dataset <- load_format_data()

## Generate the plot and save as a .png file:
png('plot3.png', width=480, height=480)
plot(dataset$Time, dataset$Sub_metering_1, xlab=" ", ylab="Energy sub metering", type = "l", main = " ")
lines(dataset$Time,dataset$Sub_metering_2, col="red")
lines(dataset$Time,dataset$Sub_metering_3, col="blue")
legend(x = "topright", col = c("black", "red", "blue"), lty = 1, lwd = 1, legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'))
dev.off()

