
#' maxn
#'
#' A function to find the top nth-highest value in a vector
#' From kohske on StackOverflow
#' http://stackoverflow.com/questions/10296866/finding-the-column-number-and-value-the-of-second-highest-value-in-a-row/10297025#10297025
#'
#' @param n vector of numbers
#'
#' @return top nth value
#' @export
#'
#' @examples
#' mydata <- c(6, 10, 2, 21, 13, 20, 4, 12)
#' secondhighest <- mydata[maxn(2)(mydata)]
#'
#' # or define function for second highest:
#' max2 <- maxn(2)
#' secondhighest <- mydata[max2(mydata)]
#'
#' # To find second-highest number in each row in a dataframe:
#' #' #'\dontrun{
#'  apply(df, 1, function(x)x[maxn(2)(x)])
#'
#'
#'
maxn <- function(n){
  function(x) order(x, decreasing = TRUE)[n]
}

