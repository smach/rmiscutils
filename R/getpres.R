#' Get US President by Date
#'
#' Get the name of US president on a given date starting with Harry Truman.
#'
#' Input a date object on or after 1945-04-12 and get the name of the US president who was in office at that time.
#' @param thedate Any date on or after 1945-04-12 as an R Date object.
#' @export
#' @examples
#' getpres(as.Date("2000-01-01"))

getpres <- function(thedate){
  #help on StackOverflow to use cut() instead of nested if-else statements
  # http://stackoverflow.com/questions/29053623/use-r-switch-for-less-than-or-greater-than
  thepres <- cut(thedate,
                 c(as.Date("1945-04-12"),
                   as.Date("1953-01-21"),
                   as.Date("1961-01-20"),
                   as.Date("1963-11-22"),
                   as.Date("1969-01-20"),
                   as.Date("1974-01-20"),
                   as.Date("1977-01-20"),
                   as.Date("1981-01-20"),
                   as.Date("1989-01-20"),
                   as.Date("1993-01-20"),
                   as.Date("2001-01-01"),
                   as.Date("2009-01-01"),
                   as.Date("2016-01-20")),
                 labels=c("Truman","Eisenhower", "Kennedy", "Johnson",
                          "Nixon", "Ford", "Carter", "Reagan", "George HW Bush",
                          "Clinton", "George W Bush", "Obama"), right=F)

  return(as.character(thepres))

}



#' Get US President's Polical Party by Date
#'
#' Get the US president's on a given date starting with Harry Truman (D) on 1945-04-12.
#'
#' Input a date object on or after 1945-04-12 and get the name of the political party of the US president who was in office at that time.
#' @param thedate Any date on or after 1945-04-12 as an R Date object.
#' @export
#' @examples
#' getparty(as.Date("2000-01-01"))


getparty <- function(thedate){
  #help on StackOverflow to use cut() instead of nested if-else statements
  # http://stackoverflow.com/questions/29053623/use-r-switch-for-less-than-or-greater-than
  theparty <- cut(thedate,
                  c(as.Date("1945-04-12"),
                    as.Date("1953-01-21"),
                    as.Date("1961-01-20"),
                    as.Date("1963-11-22"),
                    as.Date("1969-01-20"),
                    as.Date("1974-01-20"),
                    as.Date("1977-01-20"),
                    as.Date("1981-01-20"),
                    as.Date("1989-01-20"),
                    as.Date("1993-01-20"),
                    as.Date("2001-01-01"),
                    as.Date("2009-01-01"),
                    as.Date("2016-01-20")),
                  labels=c("Democrat","Republican", "Democrat", "Democrat",
                           "Republican", "Republican", "Democrat", "Republican", "Republican",
                           "Democrat", "Republican", "Democrat"), right=F)

  return(as.character(theparty))

}





