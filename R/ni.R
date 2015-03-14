#'
#' Base R has the \%in\% function to see if one object is contained within another object.
#' Why not \%ni\% to see if one object is NOT contained within another?
#' Idea from stackoverflow
#' http://stackoverflow.com/questions/11302985/match-with-negation
#'
#' @param myobject a vector
#' @keywords function
#' @export
#' @examples
#' 5 %ni% c(2,4,6)
#' # TRUE
#'
'%ni%' <- Negate('%in%')
