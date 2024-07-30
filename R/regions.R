#' Middle Earth regions data
#'
#' Geospatial shapefiles of regions throughout Middle Earth
#' Report ...
#'
#' @format ## `regions`
#' A data frame with 14 rows and 3 columns:
#' \describe{
#'   \item{name}{region name}
#'   \item{fontsizeKm}{font size in km}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

regions <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Regions_Anno.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(regions, overwrite = TRUE)
