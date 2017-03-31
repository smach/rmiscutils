#' add_pct_cols_to_dataframe
#'
#' This function lets you select columns in a data frame with raw numbers and will add columns with percent data by row. This is particular useful for election results where each row contains data by precinct, city, etc. and each column is a different candidate, ballot question yes/no, or similar construct.
#'
#' This is a modification of the pct function from the caroline package by David Schruth.
#'
#' @param df data frame that contains at least one numeric column.
#' @param mycols character strings - names of columns with numerical data for which you'd like to calculate percentages across rows.
#' @param totalcol character string - name of column that has vote (or other) totals.
#'
#' @return data frame
#' @export
#'
#' @examples
#' City <- c("Cityville", "Townville", "Placeville")
#' Yes <- c(250, 100, 150)
#' No <- c(200, 200, 300)
#' mydf <- data.frame(City, Yes, No)
#' mydf$Total <- mydf$Yes + mydf$No
#  mydf <- add_pct_cols_to_dataframe(mydf, c("Yes", "No"))
#'
add_pct_cols_to_dataframe <- function (df, mycols, totalcol = "Total"){
  #modification of pct from caroline package to do percents by rows
  for (i in mycols){
    df[paste(i, "pct", sep = ".")] <- round(df[i] / df[totalcol], 3)
  }
  return(df)
}

City <- c("Cityville", "Townville", "Placeville")
Yes <- c(250, 100, 150)
No <- c(200, 200, 300)
mydf <- data.frame(City, Yes, No)
mydf$Total <- mydf$Yes + mydf$No
mydf <- add_pct_cols_to_dataframe(mydf, c("Yes", "No"))
