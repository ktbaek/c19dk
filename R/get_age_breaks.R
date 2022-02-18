#' Helper function for get_pop_by_breaks(). 
#'
#' @param maxage numeric. Lower limit of maximum age bracket.
#' @param agesplit numeric. Window size of age brackets. 
#'
#' @return a numeric vector of age breaks
#'
#' @examples
#' 
#'
#' @export
get_age_breaks <- 
  function(maxage = 100, agesplit = 10) {
    
    c(seq(-1, maxage - 1, agesplit), 125)
    
  }