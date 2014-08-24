plot2 <- function(data, title="Total emissions in Baltimore City, Maryland", labels = c("Year", "Emissions")){
  plot(data, type = "l", main = title, xlab = labels[1], ylab = labels[2]);
}