#' @title binomial mean
#' @description calculates the mean of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the mean of a binomial variable
#' @export
#' @examples
#' bin_mean(trials = 10, prob = 0.3)
bin_mean <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  mean <- aux_mean(trials, prob)
  return(mean)
}


#' @title binomial variance
#' @description calculates the variance of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the variance of a binomial variable
#' @export
#' @examples
#' bin_variance(trials = 10, prob = 0.3)
bin_variance <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  variance <- aux_variance(trials, prob)
  return(variance)
}

#' @title binomial mode
#' @description calculates the mode of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the mode of a binomial variable
#' @export
#' @examples
#' bin_mode(trials = 10, prob = 0.3)
bin_mode <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  mode <- aux_mode(trials, prob)
  return(mode)
}

#' @title binomial skewness
#' @description calculates the skewness of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the skewness of a binomial variable
#' @export
#' @examples
#' bin_skewness(trials = 10, prob = 0.3)
bin_skewness <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  skewness <- aux_skewness(trials, prob)
  return(skewness)
}

#' @title binomial kurtosis
#' @description calculates the kurtosis of a binomial variable
#' @param trials number of trials
#' @param prob probability of success
#' @return the kurtosis of a binomial variable
#' @export
#' @examples
#' bin_kurtosis(trials = 10, prob = 0.3)
bin_kurtosis <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)

  kurtosis <- aux_kurtosis(trials, prob)
  return(kurtosis)
}


