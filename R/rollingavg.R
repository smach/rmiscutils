#' rollingavg
#'
#' Generates an n-item trailing average vector from a numerical vector, after first removing any missing values.
#'
#' @param myvec Numerical vector from which you want to calculate a trailing average
#' @param n Number of items to be used for each mean calculation, such as 7 for a 7-day trailing average
#' @return The n-item trailing average of myvec
#' @export
#'
#' @examples
#' myvector <- c(100, 98, 97.5, 102, 96, 96.5, 97, 94, 92.3, 93, 95, 91, 89, 88, 88.5, 86)
#' my7dayavg <- rollingavg(myvector)
#'
rollingavg <- function(myvec, n=7){
  numvals <- length(myvec)
  myvec <- myvec[!is.na(myvec)]
  nminus1 <- n-1
  movavgitem <- vector(mode="numeric", length=numvals)
  for(i in 1:numvals){
    if(i >= n){
      movavgitem[i] <- sum(myvec[i:(i-nminus1)]) / n
    } else {
      movavgitem[i] <- NA
    }
  }
  return(movavgitem)
}
