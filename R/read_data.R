#' Reads csv files
#'
#' @param path path to file
#' @param type numeric. 1 uses read_csv, 2 uses read_csv2.
#'
#' @return a dataframe.
#'
#' @examples
#' 
#'
#' @export
read_data <- 
  
  function(path, type = 2, ...) {
  
  if(file.exists(path)){
    if(type == 1) return(readr::read_csv(path, ...))
    if(type == 2) return(readr::read_csv2(path, ...))
  }
    }