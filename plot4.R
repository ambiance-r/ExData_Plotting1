## Peer-graded Assignment: Course Project 1 - Plot 4

setwd("C:/Users/user/datasciencecoursera/ExData_Plotting1")

source("load_format_data.R")
  
## Load the data:
dataset <- load_format_data()

## Generate the plot and save as a .png file:
png('plot4.png', width=480, height=480)

par(mfrow = c(2,2))

# Topleft plot (Plot 2):
plot(dataset$Time, dataset$Global_active_power, xlab=" ", ylab="Global Active Power", type = "l", main = " ")

# Topright plot (new plot):
plot(dataset$Time, dataset$Voltage, xlab="datetime", ylab="Voltage", type = "l", main = " ")

# Bottomleft plot (Plot 3):
plot(dataset$Time, dataset$Sub_metering_1, xlab=" ", ylab="Energy sub metering", type = "l", main = " ")
lines(dataset$Time,dataset$Sub_metering_2, col="red")
lines(dataset$Time,dataset$Sub_metering_3, col="blue")
legend(x = "topright", col = c("black", "red", "blue"), lty = 1, lwd = 1, legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), bty = "n")

# Bottomright plot (new plot):
plot(dataset$Time, dataset$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type = "l", main = " ")

dev.off()

