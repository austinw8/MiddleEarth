#' Middle Earth citadels data
#'
#' Geospatial shapefiles of citadels throughout Middle Earth
#' Report ...
#'
#' @format ## `citadels`
#' A data frame with 119 rows and 3 columns:
#' \describe{
#'   \item{NAME}{citadel name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

citadels <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Citadels.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(citadels, overwrite = TRUE)
