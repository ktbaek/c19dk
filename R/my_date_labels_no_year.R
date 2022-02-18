#' Function to add date labels on ggplots in Danish without year
#'
#' @param breaks breaks as given by the breaks argument in scale_x_date
#'
#' @return a vector of labels
#'
#' @examples
#'
#' @export
my_date_labels_no_year <-

  function(breaks) {
    sapply(breaks, function(x) {
      stringr::str_to_lower(strftime(x, "%e. %b"))
    })
  }
