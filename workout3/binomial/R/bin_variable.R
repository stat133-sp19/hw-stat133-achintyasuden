#' @title binomial variable function
#' @description returns a binomial random variable
#' @param trials number of trials
#' @param prob probability of success
#' @return a binomial variable list
#' @export
#' @examples
#' bin_variable(3, 0.5)
bin_variable <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  binlist <- list(trials = trials, probability = prob)
  class(binlist) <- "binvar"
  return(binlist)

}


#'@export
#'@examples
#'bin <- bin_variable(3, 0.5)
#'print.binvar(bin)
print.binvar <- function(bin) {
  cat("'Binomial Variable'\n\n")
  cat("Parameters\n")
  cat("- number of trials:", bin$trials,'\n')
  cat("- prob of success:", bin$prob)
}

#'@export
#'@examples
#'bin <- bin_variable(3, 0.5)
#'summary.binvar(bin)
summary.binvar <- function(bin) {

  bin <- list(trials = bin$trials,
               prob = bin$prob,
               mean = aux_mean(bin$trials, bin$prob),
               variance = aux_variance(bin$trials, bin$prob),
               mode = aux_mode(bin$trials, bin$prob),
               skewness = aux_skewness(bin$trials, bin$prob),
               kurtosis = aux_kurtosis(bin$trials, bin$prob))
  class(bin) <- "summary.binvar"
  return(bin)
}


#'@export
#'@examples
#'bin1 <- bin_variable(3, 0.5)
#'print.summary.binvar(bin1)
print.summary.binvar <- function(bin) {
  cat('"Summary Binomial"\n\n')
  cat('Paramaters\n')
  cat("- number of trials: ", bin$trials,"\n")
  cat("- prob of success: ", bin$prob, "\n\n")
  cat('Measures\n')
  cat("- mean    : ", aux_mean(bin$trials, bin$prob), "\n")
  cat("- variance: ", aux_variance(bin$trials, bin$prob), "\n")
  cat("- mode    : ", aux_mode(bin$trials, bin$prob), "\n")
  cat("- skewness:", aux_skewness(bin$trials, bin$prob), "\n")
  cat("- kurtosis: ", aux_kurtosis(bin$trials, bin$prob))
}






