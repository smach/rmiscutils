#' renamecol
#'
#' This function is a wrapper for the more cumbersome base R syntax
#' colnames(mydf)[colnames(mydf) == 'oldcolname'] <- 'newcolname'
#' because I also find it difficult to remember that I could also use
#' mydf <- dplyr::rename(mydf,c('foo'='samples'))
#'
#' @param mydf dataframe with column to be renamed
#' @param oldcolname character string existing column name
#' @param newcolname character string desired new column name
#'
#' @return dataframe
#' @export
#'
#' @examples
#' new_mtcars <- renamecol(mtcars, "mpg", "MPG")
#'
renamecol <- function(mydf, oldcolname, newcolname){
  colnames(mydf)[colnames(mydf) == oldcolname] <- newcolname
  return(mydf)
}
