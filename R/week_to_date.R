#' Converts a week number to a date in that week
#'
#' @param year numeric or character. Year of interest.  
#' @param week numeric or character. Week of interest. 
#' @param day numeric or character. Day of week to get date of. Monday = 1 etc. 
#'
#' @return a date in yyyy-mm-dd date format.
#'
#' @examples
#' 
#'
#' @export
week_to_date <- 
  function(year, week, day = "1"){
    
    if(class(week) == "numeric") {
      w <- sprintf("%02d", week)
    }else{
      w <- sprintf("%02s", week)
    }
  
  ISOweek::ISOweek2date(paste0(year, "-W", w, "-", day))

    }