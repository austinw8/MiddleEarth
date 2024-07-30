#' Middle Earth towers and keeps data
#'
#' Geospatial shapefiles of towers and keeps throughout Middle Earth
#' Report ...
#'
#' @format ## `towers_and_keeps`
#' A data frame with 202 rows and 3 columns:
#' \describe{
#'   \item{NAME}{tower or keep name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

towers_and_keeps <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Towers_and_Keeps.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(towers_and_keeps, overwrite = TRUE)
