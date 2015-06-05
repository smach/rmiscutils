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

