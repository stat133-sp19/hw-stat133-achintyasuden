choose_initial <- function(n,k) {
  if (k > n) {
    stop("k cannot be greater than n")
  }
  return(factorial(n)/(factorial(k) * factorial(n-k)))
}


#' @title choose function
#' @description the number of combinations in which k successes can occur in n trials.
#' @param n number of trials
#' @param k number of successes
#' @return a combination factor
#' @export
#' @examples
#' bin_choose(n = 5, k = 2)
#' bin_choose(5,0)
#' bin_choose(5, 1:3)
bin_choose <- function(n,k) {

  return(as.vector(sapply(n, FUN = choose_initial, k)))

}


