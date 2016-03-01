#' findwinner
#'
#' This function finds the top vote-getter in a csv or Excel election results file - it looks for the largest number in each row and creates a new column with the name of the winner (more specifically, the column name with the maximum value for each row). Requires rio package.
#'
#' Results file must have candidate results in adjoining columns, in a format with each candidate having their own column of results. findwinner function arguments: filename (string), datacolstart (number of data column where results data starts; 2 for column B in Excel, for example), datacolstop (number of the last dat…
#'
#' @param filename string name of file, either spreadsheet or csv, including extension and file path if not in your working directory
#' @param datacolstart integer number of the column where the results data starts. If data starts in column B of an Excel spreadsheet, for example, datacolstart should be 2.
#' @param datacolstop integer number of the column where the results data ends
#' @param exportcsv Boolean If you want results saved to a csv file (name is same as filename_winners.csv)
#'
#' @return dataframe
#' @export
#'
#' @examples
#' \dontrun{
#' mydata <- findwinner("results.xlsx", 2, 4)
#' }
#'
findwinner <- function(filename, datacolstart, datacolstop, exportcsv=TRUE){
  if(!require("rio"))install.packages("rio")
  data <- rio::import("test.xlsx")
  data$WinnerColumnNumber <- apply(data[,datacolstart:datacolstop], 1, (which.max)) + (datacolstart-1)
  data$Winner <- names(data)[data$WinnerColumnNumber]
  data$WinnerColumnNumber <- NULL
  if(exportcsv){
    filename_root <- strsplit(filename, "\\.")[[1]][1]
    filename_with_winner <- paste0(filename_root, "_winners.csv")
    rio::export(data, filename_with_winner)
  }

  return(data)
}
