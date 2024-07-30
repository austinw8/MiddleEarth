#' Middle Earth helper contour line data
#'
#' Geospatial shapefiles of helper contour lines throughout Middle Earth
#' Report ...
#'
#' @format ## `helper_contours`
#' A data frame with 19 rows and 8 columns:
#' \describe{
#'   \item{LENGTH}{contour line length}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

helper_contours <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/HelperContours.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(helper_contours, overwrite = TRUE)
