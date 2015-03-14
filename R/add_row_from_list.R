#' add_row_from_list Add one row of data to a data frame from a list
#'
#' Easily add one row to a data frame when columns are not all of one class. Data should be in a list format, one row only, in same order as columns in the original data frame. Any missing values must be explicitly included as NAs. Similar to SQL INSERT INTO. Maintains same class as original data frame.
#'
#' WARNING: THIS IS STILL A WORK IN PROGRESS!!!
#'
#' @param mydf A data frame to which you'd like to add a row
#' @param mylist A list holding a single row of data,
#' in the exact order of columns in the original data frame.
#' @keywords dataframes
#' @export
#' @examples
#' # Idea from Jennifer Bryan
#' add_row_from_list(iris, list(5.1, 3.5, 1.4, 0.2, "setosa"))
#'
#'

add_row_from_list <- function(mydf, mylist){
  colClasses <- sapply(mydf, class)

  # check to make sure length of list is same as number of columns in data frame
  if(ncol(mydf) != length(mylist)){
    cat("Your list must be the same length as the number of columns in your data frame")
    break
  }

  # set proper classes
  for(i in 1:ncol(mydf)){
    if (is.factor(mydf[[1,i]])){
      myfactors <- mydf[[i]]
      myfactors[length(myfactors) + 1] <- mylist[[i]]
      mylist[[i]] <- myfactors[length(myfactors)]
    } else {

    class(mylist[[i]]) <- class(mydf[1,i])
  }

  # add mylist to data frame
  newdf <- rbind(mydf, mylist)
  return(newdf)
  }
}

