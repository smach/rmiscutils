#' numbers_with_commas
#'
#' Turn a number with commas, which R views as a string, into a numeric class number. Will also remove dollar signs.
#' @param mynumstring - one or more character strings such as "3,650"
#' @export
#' @examples
#' vect <- c("3,567", "465", "$4,000,654")
#' number_with_commas(vect)
#' # [1]    3567     465 4000654


number_with_commas <- function(mynumstring){
  x <- gsub(",", "", mynumstring)
  x <- gsub("\\$", "", mynumstring)
  myanswer <- as.numeric(x)
  return(myanswer)
}


