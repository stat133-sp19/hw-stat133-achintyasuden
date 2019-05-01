#private function check if an input 'prob' is a vaild probabikity value
check_prob <- function(prob) {
  if(prob <= 1 & prob >= 0) {
    return(TRUE)
} else {
  stop("invalid prob value")
}
}


#private function check if an input 'trials' is a valid value for # of trials (non negative integer).
check_trials <- function(trials) {
  if(trials >= 0 & trials == round(trials)) {
    return(TRUE)
  } else {
    stop("invalid trials value")
  }
}

#private function check if an input 'success' is a valid value for number of success: between 0 and the number of trials.
check_success <- function(success, trials) {
  if (success < 0 | success != round(success)) {
    stop('invalid success value') }
  if (success > trials) {
    stop("success can't be greater than trials")
  } else {
    return(TRUE)
  } }
