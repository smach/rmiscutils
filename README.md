<!-- README.md is generated from README.Rmd. Please edit that file -->
This package is a collection of simple R functions that I've either written or discovered over the years that I've found useful and like to re-use. In some cases, these functions are just thin wrappers around other functions but the syntax is easier for me to remember.

This is still a work in progress.

To install, you need to have the devtools package on your system (if you don't have it, install that with install.packages("devtools") ) and then run

``` r
devtools::install_github("smach/rmiscutils")
```

Some of the tasks that functions in this package accomplish:

Add a row to a dataframe with the format

``` r
 add_row(mydf, col1 = 4, col2 = 7, col3="A")
```

`add_row`

Add a row to a dataframe with the format

``` r
add_row_from_list(iris, list(5.1, 3.5, 1.4, 0.2, "setosa"))
```

`add_row_from_list`

Calculate percentages from selected data frame columns by row, and add new columns with that data. Designed for election results. `add_pct_cols_to_dataframe`

Calculate the statistical mode of a vector (which base R oddly does not do). `mymode`

Capitalizes the first letter of each word in a string. (Note: base R 3.2.0 subsequently included the `tools::toTitleCase(`) function, but toinitialcap has the advantage of naming consistency with base R's `tolower` and `toupper`). `toinitialcap` -- to go along with base R's tolower() and toupper(),

Convert all NA values in a data frame to zeroes. `na2zero`

Convert only NA values to zeroes in data frame columns that are numeric or integers. Uses for loops, so may be slow for large data frames. `na2zero2`

Convert character strings containing numbers with commas into numbers. `numbers_with_commas`

Convert a vector of character strings into an ordered factor, keeping the original order. Helpful if x-axis order is important when visualizing data. (Created before the forcats package). `strings_to_ordered_factors`

Create a frequency table sorted by descending frequency. (Would probably use a version of `janitor::tabyl` today) `table_sorted`

Find winning (or other) streaks in a vector of data. This is a slightly modified function from [Exploring Baseball Data with R](https://baseballwithr.wordpress.com/2014/07/07/team-streaks-part-i-2/). `streaks`

Read a text file into an R variable as a single character string. `read_textfile`

Rename a single data frame column using format `renamecol(mydf, oldcolname, newcolname)` `renamecol`

Remove columns from a data frame where *all* values are NA. Useful when importing spreadsheets or CSV files where there are some empty columns. `removecolsAllNA`

Unload a package from current working session. Because it can be difficult to remember that `detach("package:mypackagename", unload=TRUE)` or `unloadNamespace("mypackagename")` are the opposites of `library("mypackagename")`. `unlibrary`

Write an object containing character string data to a text file. `write_textfile`

From a character string, return the value of an object with that name (there's also string2varname, which does the reverse) `varname2string`

To see a complete list of available function and links to their help files, run

``` r
help(package = "rmiscutils")
```

Or, to list some of the package's functions by function name:

*add\_pct\_cols\_to\_dataframe* -- designed for election results, will calculate percentages from selected columns by row and add new columns with that data.

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

*na2zero2* -- turns only NA values to zeroes in data frame columns that are numeric or integers. Uses for loops, so may be slow for large data frames.

*numbers\_with\_commas* -- easily turn character strings containing numbers with commas into numbers.

*read\_textfile* -- read a text file into an R variable as a single character string.

*renamecol* -- rename a single column in a dataframe using format renamecol(mydf, oldcolname, newcolname)

*removecolsAllNA* -- remove columns from a data frame where *all* values are NA. Useful when importing spreadsheets or CSV files where there are some empty columns.

*toinitialcap* -- to go along with base R's tolower() and toupper(), capitalizes the first letter of each word in a string. Note: base R 3.2.0 now has tools::toTitleCase() function.

*streaks* -- find winning (or other) streaks in a vector of data, slightly modified function from [Exploring Baseball Data with R](https://baseballwithr.wordpress.com/2014/07/07/team-streaks-part-i-2/).

*strings\_to\_ordered\_factors* -- turn a vector of character strings into an ordered factor, keeping the original order. Helpful if x-axis order is important when visualizing data.

*table\_sorted* -- get frequency table sorted by frequency descending.

*unlibrary* -- because it can be difficult to remember that detach("package:mypackagename", unload=TRUE) or unloadNamespace("mypackagename") are the opposites of library("mypackagename").

*varname2string* -- takes string and returns value of an object with that name (there's also string2varname, which does the reverse)

*write\_textfile* -- write an object containing character string data to a text file.

To see a complete list of available function and links to their help files, run

``` r
help(package = "rmiscutils")
```
