#' Middle Earth cities data
#'
#' Geospatial shapefiles of cities throughout Middle Earth
#' Report ...
#'
#' @format ## `cities`
#' A data frame with 30 rows and 4 columns:
#' \describe{
#'   \item{TYPE}{city type}
#'   \item{NAME}{city name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

cities <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Cities.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(cities, overwrite = TRUE)
