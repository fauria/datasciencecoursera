loadEpcData <- function(epcFrom, epcTo, epcFile = "household_power_consumption.txt", epcTypes = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"), epcNa = c("?")){
  epc <- read.csv(file = epcFile, header = TRUE, sep = ";", quote = "\"", colClasses = epcTypes, na.strings = epcNa, stringsAsFactors = FALSE, check.names = FALSE)
  epc$DateTime <- strptime(paste(epc$Date, epc$Time), "%d/%m/%Y %H:%M:%S")
  epc$Date <- as.Date(epc$Date, format = "%d/%m/%Y")
  
  epc <- subset(epc, Date >= epcFrom & Date <= epcTo)
  epc
}