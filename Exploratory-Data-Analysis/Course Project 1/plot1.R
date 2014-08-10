plot1 <- function(colour = "red", title = "Global Active Power", labels = c("Global Active Power (kilowatts)", "Frequency") ){
  hist(epc$Global_active_power, col = colour, main = title, xlab = labels[1], ylab = labels[2])
}
