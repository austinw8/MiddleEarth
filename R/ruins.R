#' Middle Earth ruins data
#'
#' Geospatial shapefiles of ruins throughout Middle Earth
#' Report ...
#'
#' @format ## `ruins`
#' A data frame with 237 rows and 3 columns:
#' \describe{
#'   \item{NAME}{ruin name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

ruins <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Ruins.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(ruins, overwrite = TRUE)
