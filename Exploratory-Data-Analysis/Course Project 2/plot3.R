plot3 <- function(data){
  ggplot(data, aes(x = year, y = Emissions, color = type)) + geom_area(stat="summary", fun.y="sum")
}