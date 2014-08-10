plot2 <- function(colour = "black", title = "", labels = c("", "Global Active Power (kilowatts)") ){
  plot(epc$DateTime, epc$Global_active_power, type = "l", col = colour, main = title, xlab = labels[1], ylab = labels[2])
}
