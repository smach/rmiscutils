#' toinitialcap
#'
#' Base R has toupper and tolower - why not toinitialcap?
#' This renames the example .simpleCap function in the toupper help file.
#' @param mystring (any string)
#' @keywords strings
#' @export
#' @examples
#' toinitialcap("this is a headline")

toinitialcap <- function(mystring){
    s <- strsplit(mystring, " ")[[1]]
    paste(toupper(substring(s, 1, 1)), substring(s, 2),
          sep = "", collapse = " ")
}

#' vector_to_single_string_w_linebreaks
#'
#' This function takes a vector of character strings and turns it into a single string with line breaks after each item.
#' @param myvector A vector of character strings
#' @param cr Number of line breaks after each element, defaults to 1
#' @keywords strings
#' @export
#' @examples
#' vec <- c("Mon", "Tue", "Wed", "Thur", "Fri", "Sat", "Sun")
#' vector_to_single_string(vec, 2)


vector_to_single_string_w_linebreaks <- function(myvector, cr=1){
  carriagereturns <- rep("\n", cr)
  carriagereturns <- paste(carriagereturns, collapse="")
  mystring <- paste(myvector, collapse=carriagereturns)
  return(mystring)
}

#' copy_textfile_to_clipboard
#'
#' This function takes the path to a textfile as a character string and reads it into the Windows or Mac clipboards only.
#' @param mytextfile Path to a text file as a character string
#' @keywords clipboard
#' @export
#' @examples
#' myfile <- "data/textfile.txt"
#' copy_textfile_to_clipboard(myfile)

copy_textfile_to_clipboard <- function(mytextfile) {
  if(Sys.info()["sysname"]=="Windows"){
    mystring <- readChar(mytextfile, file.info(mytextfile)$size)
    cat(mystring,file="clipboard",sep=' ')
  } else {
    myclipboard <- pipe('pbcopy','w')
    cat(mytextfile,file=myclipboard,sep=' ')
    close(myclipboard)
  }
}




#' string2varname
#'
#' This function takes a string and turns it into a variable name.
#' Code from John Ramey at http://johnramey.net/blog/2010/12/28/converting-a-string-to-a-variable-name-on-the-fly-and-vice-versa-in-r/
#'
#' @param x string
#'
#' @return variable name
#' @export
#'
#' @examples
#'
#' x <- 42
#' eval(parse(text = "x"))
#' # [1] 42
#'
string2varname <- function(x){
  eval(parse(text = "x"))
}
