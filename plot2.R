## Peer-graded Assignment: Course Project 1 - Plot 2

setwd("C:/Users/user/datasciencecoursera/ExData_Plotting1")

source("load_format_data.R")

## Load the data:
dataset <- load_format_data()

## Generate the plot and save as a .png file:
png('plot2.png', width=480, height=480)
plot(dataset$Time, dataset$Global_active_power, xlab=" ", ylab="Global Active Power (kilowatts)", type = "l", main = " ")
dev.off()


