#' findwinner
#'
#' This function finds the top vote-getter in a csv or Excel election results file - it looks for the largest number in each row and creates a new column with the name of the winner(s) (more specifically, the column name with the maximum value for each row). Accounts for ties. Requires rio package.
#'
#' Results file must have candidate results in adjoining columns, in a format with each candidate having their own column of results. findwinner function arguments: filename (string), datacolstart (number of data column where results data starts; 2 for column B in Excel, for example), datacolstop (number of the last dat…
#'
#' @param filename string name of file, either spreadsheet or csv, including extension and file path if not in your working directory. If name does not include ".csv", ".tsv", ".xlsx", ".xls", or ".ods", function assumes that you want to use the name of a data frame that already exists in your working environment.
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
findwinner <- function (filename, datacolstart, datacolstop, exportcsv = TRUE)
{
  matches <- "\\.csv|\\.tsv|\\.xlsx|\\.xls|\\.ods"
  if(grepl(matches, filename)){
    data <- rio::import(filename)
  } else {
    data <- eval(parse(text = filename))
  }

  for(i in 1:nrow(data)){
    ranks <- rank(data[i,datacolstart:datacolstop])
    maxrank <- as.numeric(max(ranks))
    winners <- names(ranks[ranks==maxrank])
    data$Winners[i] <- paste(winners, collapse = ", ")
  }

  if (exportcsv) {
    filename_root <- strsplit(filename, "\\.")[[1]][1]
    filename_with_winner <- paste0(filename_root, "_winners.csv")
    rio::export(data, filename_with_winner)
  }
  return(data)
}
