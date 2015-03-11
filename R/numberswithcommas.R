#' numbers.with.commas
#'
#' Turn a number with commas, which R views as a string, into a numeric class number.
#' @param mynumstring - one or more character strings such as "3,650"
#' @export
#' @examples
#' vect <- c("3,567", "465", "4,000,654")
#' number.with.commas(vect)
#' # [1]    3567     465 4000654


number.with.commas <- function(mynumstring){
  x <- gsub(",", "", mynumstring)
  myanswer <- as.numeric(x)
  return(myanswer)
}


