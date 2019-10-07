

#' Open file to edit RStudio project list
#'
#' Opens file for editing the RStudio drop-down project list so individual projects can be removed from the list.
#'
#' @param windrive For Windows only, drive where RStudio is installed. Defaults to C.
#'
#' @return action opens file
#' @export
#'
#' @examples
#' \dontrun{
#' edit_project_list()
#' }
edit_project_list <- function(windrive = "C"){
  if(.Platform$OS.type == "windows"){
    path <- paste0(windrive, ":/Users/", unname(Sys.info()['user']), "/AppData/Local/RStudio-Desktop/monitored/lists/project_mru")
  } else {
    path <- "~/.rstudio-desktop/monitored/lists/project_mru"
  }
  usethis::edit_file(path)
}
