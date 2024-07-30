#' Middle Earth towns data
#'
#' Geospatial shapefiles of towns throughout Middle Earth
#' Report ...
#'
#' @format ## `towns`
#' A data frame with 425 rows and 4 columns:
#' \describe{
#'   \item{TYPE}{town type}
#'   \item{NAME}{toen name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

towns <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Towns.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(towns, overwrite = TRUE)
