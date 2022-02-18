#' Function that takes population data from Danmarks Statistik and calculates population sizes in given brackets 
#'
#' @param data dataframe. Tidy dataframe of DST population data
#' @param age_breaks numeric vector. Upper limit of each age bracket 
#'
#' @return a dataframe with population sizes by age brackets 
#'
#' @examples
#' 
#'
#' @export
get_pop_by_breaks <- 
  
  function(data = "../data/tidy_DST_pop.csv", age_breaks) {
  
  maxage <- age_breaks[length(age_breaks)-1] + 1
  
  readr::read_csv2(data) %>%
    dplyr::group_by(Year, Quarter, Sex, Age_cut = cut(Age, breaks = age_breaks)) %>%
    dplyr::summarize(Population = sum(Population)) %>%
    dplyr::rowwise() %>%
    dplyr::mutate(
      from = as.double(stringr::str_split(stringr::str_replace_all(Age_cut, "[\\(\\]]", ""), ",")[[1]][1]) + 1,
      to = as.double(stringr::str_split(stringr::str_replace_all(Age_cut, "[\\(\\]]", ""), ",")[[1]][2]),
      Age = dplyr::case_when(
        from == maxage ~ paste0(maxage, "+"),
        TRUE ~ paste(from, to, sep = "-")
      )
    ) %>%
    dplyr::select(-from, -to, -Age_cut)
  }