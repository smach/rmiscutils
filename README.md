<!-- README.md is generated from README.Rmd. Please edit that file -->
This package is a collection of simple R functions that I've either written or discovered over the years that I've found useful and like to re-use. In some cases, these functions are just thin wrappers around other functions but the syntax is easier for me to remember.

This is still a work in progress.

To install, you need to have the devtools package on your system (if you don't have it, install that with install.packages("devtools") ) and then run

``` r
devtools::install_github("smach/rmiscutils")
```

Functions include:

*add\_row* -- add a row to a dataframe with the format

``` r
 add_row(mydf, col1 = 4, col2 = 7, col3="A")
```

Thanks to Hadely Wickham for that function idea.

*add\_row\_from\_list* -- add a row to a dataframe with the format

``` r
add_row_from_list(iris, list(5.1, 3.5, 1.4, 0.2, "setosa"))
```

Thanks to Jennifer Bryan for that function idea.

*mymode* -- calculates the statistical mode of a vector, which base R oddly does not do.

*na2zero* -- turn all NA values in a data frame to zeroes.

*numbers\_with\_commas* -- easily turn character strings containing numbers with commas into numbers.

*toinitialcap* -- to go along with base R's tolower() and toupper(), capitalizes the first letter of each word in a string. Note: base R 3.2.0 now has tools::toTitleCase() function.

*strings.to.ordered.factors* -- turn a vector of character strings into an ordered factor, keeping the original order. Helpful if x-axis order is important when visualizing data.

*unlibrary* -- because it can be difficult to remember that detach("package:mypackagename", unload=TRUE) or unloadNamespace("mypackagename") are the opposites of library("mypackagename").

To see a complete list of available function and links to their help files, run

``` r
help(package = "rmiscutils")
```
