#' removecolsAllNA
#'
#' This function removes "empty" data frame columns where all the values are NA
#'
#' @param mydf - data frame
#'
#' @return data frame
#' @export
#'
#' @examples
#' Cat <- c("CatA", "CatB", "CatC")
#' Val1 <- c(4, 6, 5)
#' Val2 <- c(NA, NA, NA)
#' Val3 <- c(7, NA, 2)
#' thedf <- data.frame(Cat, Val1, Val2, Val3)
#' newdf <- removecolsAllNA(thedf)
#'
removecolsAllNA <- function(mydf){
  # Wrapper for this excellent StackOverflow answer http://stackoverflow.com/a/15968937/718150
  newdf <- mydf[colSums(!is.na(mydf)) > 0]
  return(newdf)
}
