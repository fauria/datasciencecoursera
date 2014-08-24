plot1 <- function(data, title="Total emissions from PM2.5 in the United States", labels = c("Year", "Emissions")){
  plot(data, type = "l", main = title, xlab = labels[1], ylab = labels[2]);
}

