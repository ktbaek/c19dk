#' Function to add date labels on ggplots in English with the year added on the first label of a new year 
#'
#' @param breaks breaks as given by the breaks argument in scale_x_date
#'
#' @return a vector of labels
#'
#' @examples
#'
#' @export
my_date_labels_en <-
  function(breaks) {
    d <- c(0, tidyr::replace_na(diff(lubridate::year(breaks)), 0))

    labels <- mapply(function(x, y) {
      if (y == 1) {
        strftime(x, "%e %b\n %Y")
      } else {
        strftime(x, "%e %b")
      }
    }, breaks, d)

    return(labels)
  }
