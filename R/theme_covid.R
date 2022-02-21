#' ggplot theme for covid19danmark.dk
#'
#'
#' @return a ggplot theme
#'
#' @examples
#' 
#'
#' @export
theme_covid <- function() {
  
  theme_minimal() +
  theme(
    text = element_text(size = 11, family = "lato"),
    
    panel.grid.minor.x = element_line(size = 0.2),
    panel.grid.minor.y = element_blank(),
    panel.grid.major.x = element_line(size = 0.2),
    panel.grid.major.y = element_line(size = 0.3),
    
    plot.margin = margin(.6, .6, .3, .6, "cm"),
    plot.title = element_text(face = "bold", hjust = 0.5),
    plot.subtitle = element_text(color = "gray30", hjust = 0.5, size = 9),
    plot.caption = element_text(color = "gray70", hjust = 0, size = 8),
    
    axis.title.y = element_text(face = "bold", margin = margin(t = 0, r = 20, b = 0, l = 0)),
    axis.title.y.right = element_text(face = "bold", margin = margin(t = 0, r = 0, b = 0, l = 20)),
    axis.title.x = element_blank(),
    axis.text.x = element_text(margin = margin(t = 0, r = 0, b = 8, l = 0), hjust = 0.5),
    
    legend.position = "top",
    legend.text = element_text(size = 11),
    legend.key.size = unit(0.4, 'cm')
  )
  
}