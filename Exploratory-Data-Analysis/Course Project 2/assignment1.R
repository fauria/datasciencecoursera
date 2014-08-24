setwd("/Users/fernando/Dropbox/COURSERA/Data Science/datasciencecoursera/Exploratory-Data-Analysis/Course Project 2");
library("ggplot2")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
source("plot5.R")
source("plot6.R")

pm25 <- readRDS("summarySCC_PM25.rds")
scc <- readRDS("Source_Classification_Code.rds")

size = c(504, 504)

png(filename = "plot1.png", width = size[1], height = size[2], units = "px")
plot1(aggregate(pm25$Emissions, FUN="sum", by=list(pm25$year)))
dev.off() 

png(filename = "plot2.png", width = size[1], height = size[2], units = "px")
plot2(aggregate(pm25[pm25$fips == "24510", ]$Emissions, FUN="sum", by=list(pm25[pm25$fips == "24510", ]$year)))
dev.off()

png(filename = "plot3.png", width = size[1], height = size[2], units = "px")
plot3(pm25[pm25$fips == "24510",])
dev.off()

png(filename = "plot4.png", width = size[1], height = size[2], units = "px")
plot4(pm25[pm25$fips == "24510",])
dev.off()

png(filename = "plot5.png", width = size[1], height = size[2], units = "px")
plot5(pm25[pm25$fips == "24510",])
dev.off()

png(filename = "plot6.png", width = size[1], height = size[2], units = "px")
plot6(pm25[pm25$fips == "24510",])
dev.off()