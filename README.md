<!-- README.md is generated from README.Rmd. Please edit that file -->
This package will be a collection of simple R functions that I've either written or discovered over the years that I've found useful and like to re-use.

WARNING: I have just started working on it AND THIS IS STILL A WORK IN PROGRESS. THESE HAVE NOT BEEN FULLY TESTED FOR PRODUCTION USE BY ME, LET ALONE FOR ANYONE ELSE'S USE.

To install, you need to have the devtools package on your system (if you don't have it, install that with install.packages("devtools") ) and then run

``` r
devtools::install_github("smach/rmiscutils.R")
```

Functions include:

*add\_row()* -- add a row to a dataframe with the format

``` r
 add_row(mtcars, cyl = 4, disp = 7)
```

Thanks to Hadely Wickham for that function idea.

*add\_row\_from\_list()* -- add a row to a dataframe with the format

``` r
add_row_from_list(iris, list(5.1, 3.5, 1.4, 0.2, "setosa"))
```

Thanks to Jennifer Bryan for that function idea.

*numbers\_with\_commas()* -- easily turn character strings containing numbers with commas into numbers.

To see a complete list of available function and links to their help files, run

``` r
help(package = "rmiscutils")
```
