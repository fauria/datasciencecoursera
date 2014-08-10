source('plot3.R')

plot4 <- function(colour = "black", title = "", labels_x = c("", "datetime", "datetime"), labels_y = c("Global Active Power", "Voltage", "Global_reactive_power") ){
  par (mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))
  plot4Steps <- {
    plot(DateTime, Global_active_power, type="l", xlab = labels_x[1], ylab = labels_y[1])
    plot(DateTime, Voltage, type="l", xlab = labels_x[2], ylab = labels_y[2])
    plot3()
    plot(DateTime, Global_reactive_power, type="l", xlab = labels_x[3], ylab = labels_y[3])
  }
  
  with(epc, plot4Steps)
}