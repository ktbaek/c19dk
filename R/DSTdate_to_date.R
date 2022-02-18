#' Converts a date in typical Danmarks Statistik format to yyyy-mm-dd date format
#'
#' @param DSTdate character. Date of interest.
#'
#' @return a date in yyyy-mm-dd date format.
#'
#' @examples
#' 
#'
#' @export
DSTdate_to_date <- 
  function(DSTdate) {
  
  date <- paste0(stringr::str_sub(DSTdate, 1, 4), 
                 "-", stringr::str_sub(DSTdate, 6, 7), 
                 "-", stringr::str_sub(DSTdate, 9, 10))
  
  lubridate::ymd(date)
  
  }