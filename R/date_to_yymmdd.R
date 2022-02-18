#' Converts a date in yyyy-mm-dd format to yymmdd character string
#'
#' @param date date to convert 
#'
#' @return a date in yymmdd character format.
#'
#' @examples
#' 
#'
#' @export
date_to_yymmdd <- 
  function(date) {
  
  paste0(substr(date, 3, 4), 
         substr(date, 6, 7), 
         substr(date, 9, 10))
  
    }