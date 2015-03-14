#' add_row
#'
#' How to elegantly add one row to a data frame, similar to SQL INSERT INTO. Maintain same class as original data frame.
#' WARNING: THIS IS STILL A WORK IN PROGRESS!!!
#'
#' @param mydf, mylist (a data frame and a list)
#' @keywords dataframes
#' @export
#' @examples
#' # Idea from Hadley Wickham
#'  add_row(mtcars, cyl = 4, disp = 7)
#'

add_row <- function(mydf, ...){
  colClasses <- sapply(mydf, class)
  newrownum <- nrow(mydf) + 1
  newrowdata <- list(...)
  allCols <- names(mydf)
  definedCols <- names(newrowdata)
  # check to make sure column names defined properly
  typocheck <- definedCols %in% allCols
  if(!(all(typocheck))){
    cat("You have a typo in one of your column names")
    break
  }

  # set proper classes
  for(eachnewcol in definedCols){
    class(newrowdata[[eachnewcol]]) <- class(mydf[[eachnewcol]])
  }

  for(eachcol in allCols ){
  mydf[newrownum, eachcol] <- ifelse(eachcol %in% definedCols, newrowdata[eachcol], NA)
  }


}
