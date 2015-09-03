#' streaks
#'
#' Function to find streaks in a vector, typically winning or losing streaks.
#' Slight modification of function by Jim Albert at https://baseballwithr.wordpress.com/2014/07/07/team-streaks-part-i-2/
#'
#' @keywords baseball
#' @export
#' @param myvector a vector of characters or numbers such as 0 and 1.
#' @param streakitem a character or number that stands for the item you're seeking a streak for, such as "W" or 1.
#' @param nonstreakitem a character or number that stands for the item that usually interrupts the streak, such as "L" when seeking "W" streaks. There can be other streak-interrupting items not identified, such as "T" for ties.
#' @examples
#' seasonrecord <- c("Win", "Win", "Win", "Loss", "Loss", "Win", "Tie", "Win", "Win", "Win", "Win", "Win", "Win", "Win", "Loss", "Win")
#' streaks(seasonrecord, "Win", "Loss")

streaks <- function(myvector, streakitem="W", nonstreakitem="L"){
  n <- length(myvector)
  where <- c(nonstreakitem, myvector, nonstreakitem) != streakitem
  location.zeros <- (0 : (n + 1))[where]
  streak.lengths <- diff(location.zeros) - 1
  streak.lengths <- streak.lengths[streak.lengths > 0]
  return(streak.lengths)
}
