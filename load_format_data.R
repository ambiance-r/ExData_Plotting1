## Peer-graded Assignment: Course Project 1 - Plot 1
## Overall goal: to examine how household energy usage varies over a 2-day period in February, 2007. 

#setwd("C:/Users/user/datasciencecoursera/ExData_Plotting1")

load_format_data <- function() {
  
  filename <- "ElectricPower.zip"
  
  ## Check if the archieve already exists:
  if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileURL, filename, method="curl")
  }  
  
  ## Check if the folder exists:
  if (!file.exists("ElectricPower")) { 
    unzip(filename) 
  }
  
  ## Load the data
  powerconsumption <- read.table("C:\\Users\\user\\datasciencecoursera\\ExData_Plotting1\\household_power_consumption.txt",header=T,sep=";", dec = ".", na="?")
  
  ## convert the Date and Time variables to Date/Time classes using the strptime() and as.Date() functions.
  powerconsumption$Time <- strptime(paste(powerconsumption$Date, powerconsumption$Time), "%d/%m/%Y %H:%M:%S")
  powerconsumption$Date <- as.Date(powerconsumption$Date, "%d/%m/%Y")
  
  ## Only use data from the dates 2007-02-01 and 2007-02-02:
  mydates <- as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")
  powerconsumption <- subset(powerconsumption, Date %in% mydates)
  
  return(powerconsumption)
}
