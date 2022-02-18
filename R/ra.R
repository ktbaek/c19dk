#' Calculate running average
#'
#' @param x vector to calculate the unning average on.
#' @param n window size. Default = 7.
#' @param s side. If s = 1, the values are based on past values only, if s = 2, the values are centered in the window.
#' @param ... further arguments passed to stats::filter
#' 
#'
#' @return a vector of running average values
#'
#' @examples
#' 
#'
#' @export
ra <- 
  function(x, n = 7, s = 2, ...) {
  
    stats::filter(x, rep(1 / n, n), sides = s, ...)

    }