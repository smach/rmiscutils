#' strings.to.ordered.factors
#'
#' Turn a vector of strings into a factors while keeping the existing order of elements in the vector, instead of having them automatically alphabetized.
#' @keywords ordered factors
#' @export
#' @examples
#' mymonths <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
#' ordered_months_as_factors <- strings.to.ordered.factors(mymonths)


strings.to.ordered.factors <- function(myvector){
  factor(myvector, levels = unique(myvector), ordered=TRUE)

}
