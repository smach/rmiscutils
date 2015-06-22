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
