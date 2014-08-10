plot3 <- function(colours = c("black", "red", "blue"), title = "", labels = c("", "Energy sub metering"), measures = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")){
  plot(epc$DateTime, epc[,eval(measures[1])], type = "l", col = colours[1], xlab = labels[1], ylab = labels[2])
  lines(epc$DateTime, epc[,eval(measures[2])], type = "l", col = colours[2])
  lines(epc$DateTime, epc[,eval(measures[3])], type = "l", col = colours[3])
  legend(x = "topright", legend = measures, lty = 1, lwd = 1, col = colours)
}

