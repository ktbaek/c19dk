#' Converts a date to the date of the last give weekday
#'
#' @param date date or character. Date of interest.
#' @param date numeric. Weekday of interest.
#'
#' @return a date in yyyy-mm-dd date format.
#'
#' @examples
#' 
#'
#' @export
floor_date_wday <- 
  
  function(date, day = 1) {
  
  date <- as.Date(date)
  
  lubridate::floor_date(date, unit = "week", week_start = getOption("lubridate.week.start", day))
  
  }