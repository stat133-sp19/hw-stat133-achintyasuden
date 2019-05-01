#' @title binomial cumulative function
#' @description to calculate binomial cumulative distribution
#' @param trials number of trials
#' @param prob probability
#' @return binomial cumulative distribution
#' @export
#' @examples
#' bin_cumulative(trials = 5, prob = 0.5)
bin_cumulative <- function(trials, prob) {
  success <- NA
  probability <- NA
  cumulative <- NA
  x <- 0
  for (i in 1:(trials+1)) {
    success[i] <- (i-1)
    probability[i] <- bin_probability(success[i], trials, prob)
    x <- x + probability[i]
    cumulative[i] <- x
  }
  bincum <- data.frame(success, probability, cumulative)
  class(bincum) <- c("bincum", "data.frame", "data.frame")
  return(bincum)

}


#'@export
#'@examples
#'dis2 <- bin_cumulative(trials = 5, prob = 0.5)
#'plot.bincum(dis2)
plot.bincum <- function(bincum) {
  plot(bincum$success, bincum$cumulative, xlab = 'successes', ylab = 'probability', main = 'cumulative binomial distribution')
  lines(bincum$success, bincum$cumulative)
}


