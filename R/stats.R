#' mymode
#'
#' Get the statistical mode from a vector of values.
#'
#' @export
#' @param myvector a vector
#' @examples
#' salaries <- c(32000, 40000, 12000, 12000, 12000, 12000, 12000, 35000, 90000, 100000, 1000000)
#' themode <- mymode(salaries)
#'
#'
mymode <- function(myvector){
  freqs <- sort(table(myvector))
  results <- names(freqs[freqs == max(freqs)])
  if(is.numeric(myvector[1])){
    results <- as.numeric(results)
  }
  if(is.integer(myvector[1])){
    results <- as.integer(results)
  }
  return(results)
}
