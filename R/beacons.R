#' Middle Earth beacon data
#'
#' Geospatial shapefiles of beacons throughout Middle Earth
#' Report ...
#'
#' @format ## `beacons`
#' A data frame with 150 rows and 2 columns:
#' \describe{
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>

beacons <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Beacons.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(beacons, overwrite = TRUE)
