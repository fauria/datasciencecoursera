source('loadEpc.R')
source('plot1.R')
source('plot2.R')
source('plot3.R')
source('plot4.R')

epc <- loadEpcData(epcFrom="2007-2-1", epcTo="2007-2-2")

size = c(504, 504)

png(filename = "plot1.png", width = size[1], height = size[2], units = "px")
plot1()
dev.off()  

png(filename = "plot2.png", width = size[1], height = size[2], units = "px")
plot2()
dev.off()  

png(filename = "plot3.png", width = size[1], height = size[2], units = "px")  
plot3()
dev.off()  

png(filename = "plot4.png", width = size[1], height = size[2], units = "px")
plot4()
dev.off()  