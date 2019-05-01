#' @title binomial probability
#' @description calculates the probability of getting k successes in n trials for a binomial random variable
#' @param trials number of trials
#' @param success number of successes
#' @param prob probability of a success
#' @return binomial probability function for the given parameters
#' @export
#' @examples
#' bin_probability(success = 2, trials = 5, prob = 0.5)
#' bin_probability(success = 0:2, trials = 5, prob = 0.5)
#' bin_probability(success = 55, trials = 100, prob = 0.45)
 bin_probability <- function(success, trials, prob) {
  check_trials(trials)
  check_prob(prob)
  check_success(success, trials)

  bin_prob <- bin_choose(trials, success) * prob^success * (1-prob)^(trials - success)
  return(bin_prob)

 }




