#' @title binomial distribution
#' @description to calculate binomial probability distribution
#' @param trials number of trials
#' @param prob probability
#' @return binomial probability distribution
#' @export
#' @examples
#' bin_distribution(trials = 5, prob = 0.5)
bin_distribution <- function(trials, prob) {
  success <- NA
  probability <- NA
  for (i in 1:(trials+1)) {
    success[i] <- (i-1)
    probability[i] <- bin_probability(success[i], trials, prob)
  }
bindis <- data.frame(success, probability)
class(bindis) <- c("bindis", "data.frame")
return(bindis)

}




#' @examples
#' dis1 <- bin_distribution(trials = 5, prob = 0.5)
#' plot.bindis(dis1)
#' @export
plot.bindis <- function(bindis) {
  barplot(bindis$probability, xlab = 'successes', ylab = 'probability')
}

