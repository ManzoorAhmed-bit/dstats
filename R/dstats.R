#' Creates histogram, boxplot, line chart, density graph and descriptive summary
#' @export
#' @param x numeric variable

dstats <- function(x){
  # 2 rows and 2 columns
  par(mfrow = c(2,2))
  # Histogram
  hist(x, col = rainbow(30))
  # Box Plot
  boxplot(x, col = 'blue')
  # line Chart
  plot(x, type = 'l', xlab = 'x')
  # Density Graph
  plot(density(x), main='Density Graph')
  par(mfrow = c(1,1))
  # Descriptive Summary
  data.frame(min = min(x), median = median(x), mean = mean(x), max = max(x))
}
