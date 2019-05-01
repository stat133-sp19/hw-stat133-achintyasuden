# private auxillary function to compute mean
aux_mean <- function(trials, prob) {
  mean <- prob*trials
  return(mean)
}

# private auxillary function to compute variance
aux_variance <- function(trials, prob) {
  variance <- (trials*prob*(1-prob))
  return(variance)
}

# private auxillary function to compute mode
aux_mode <- function(trials, prob) {
  m <- (trials*prob + prob)

  if (m == floor(m)) {
    return(c(m, m-1))
  } else {
    return(floor(m))
  }
}

# private auxillary function to compute skewness
aux_skewness <- function(trials, prob) {
  skew <- (1-2*prob)/sqrt(trials * prob * (1-prob))
  return(skew)

}

# private auxillary function to compute kurtosis
aux_kurtosis <- function(trials, prob){
  kurt <- (1-(6 * prob * (1 - prob))) / (trials * prob * (1 - prob))
  return(kurt)
  }



