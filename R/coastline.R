#' Middle Earth coastline data
#'
#' Geospatial shapefiles of coastlines throughout Middle Earth
#' Report ...
#'
#' @format ## `coastline`
#' A data frame with 110 rows and 14 columns:
#' \describe{
#'   \item{LENGTH}{length of coastline}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

coastline <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Coastline2.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(coastline, overwrite = TRUE)
