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


#' getOS
#'
#' Wrapper to see what operating system is running
#'
#' @keywords environment
#' @export
#' @examples
#' getOS()
#'
getOS <- function(){
  Sys.info()['sysname']
}


#' table_sorted
#'
#' Get a frequency table from a vector of categorical variables sorted by frequency in descending order
#'
#' @export
#' @examples
#' myvec <- c("white", "blue", "purple", "white", "blue", "blue", "blue", "purple", "yellow", "white")
#' table_sorted(myvec)


table_sorted <- function(myvector){
  sort(table(myvector), decreasing = TRUE)
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

#' na2zero
#'
#' Turn all the NA values in a data frame to zero.
#'
#' @export
#' @param mydf a data frame
#' @examples
#' newdf <- na2zero(mydf)
#'
na2zero <- function(mydf){
  mydf[is.na(mydf)] <- 0
  return(mydf)
}


#' na2zero2
#'
#' Turn all the NA values in a data frame to zero but only in columns that are numeric or integers. Uses for loops, so may be slow for large data frames.
#'
#' @export
#' @param mydf a data frame
#' @examples
#'
#' x1 <- c(5,7,NA,9,10)
#' x2 <- c(2.4, 7, 6.4, NA,5.2)
#' x3 <- c(NA, "A", "B", "C", "D")
#' x <- data.frame(x1,x2,x3)
#' newdf <- na2zero2(x)
#'

na2zero2 <- function(mydf){
  for(i in 1:nrow(mydf)){
    for(j in 1:ncol(mydf)){
      if(is.na(mydf[i,j]) && (is.numeric(mydf[,j]) || is.integer(mydf[,j]))){
        mydf[i,j] <- 0
      }
    }
  }
  return(mydf)
}


