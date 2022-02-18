#' Source a file and print filepath
#'
#' @param filepath path to R file
#' 
#'
#' @return
#'
#' @examples
#' 
#'
#' @export
source_echo <- 
  function(filepath) {
  
  print(filepath)
  source(filepath)
  
}