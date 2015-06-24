#' unlibrary
#'
#' Opposite of library - wrapper to detach a package
#'
#' @keywords environment
#' @export
#' @param pkgname name of a package as a character string in quotation marks
#' @examples
#' unlibrary(devtools)
#'
unlibrary <- function(pkgname){
  unloadNamespace(pkgname)

}


#' read_textfile
#'
#' Read a text file into a variable as a single character string
#'
#' @export
#' @param filename name of a file as a character string in quotation marks
#' @examples
#' mystring <- read_textfile("myfile.txt")
#'
read_textfile <- function(filename){
  mystring <- readChar(filename, file.info(filename)$size)
  return(mystring)
}

#' setindex_bygroup
#'
#' Create an auto-indexing column in a data frame grouped by an id column, with the index starting at 1 for each id column group.
#'
#' @export
#' @param mydf a data frame
#' @param mycolnum Number of the id column for your data frame
#' @examples
#' id <- c(1,1,2,2,2,3,4,4,5,5)
#' cat <- c("A", "B", "A", "B", "C", "B", "C", "D", "A", "E")
#' mydataframe <- data.frame(id, cat)
#' mydataframe$step <- setindex_bygroup(mydataframe, 1)
#'

setindex_bygroup <- function(mydf, mycolnum){
  ave(1:nrow(mydf), factor(mydf[,mycolnum]), FUN=function(x) 1:length(x) )
}

