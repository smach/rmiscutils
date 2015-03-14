#' add_row Add one row of data to a data frame
#'
#' Easily add one row to a data frame when columns are not all of one class, when you have the format colname1 = value1, colname2 = value2, etc. Similar to SQL INSERT INTO. Maintains same class as original data frame. Any missing values will be changed to NA.
#'
#' WARNING: THIS IS STILL A WORK IN PROGRESS!!!
#'
#' @param mydf A data frame to which you'd like to add a row
#' @param ... Additional arguments in the format colname=value
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

  # add data from arguments 2 and beyond to the data frame
  for(eachcol in allCols ){
  mydf[newrownum, eachcol] <- ifelse(eachcol %in% definedCols, newrowdata[eachcol], NA)
  }
}



