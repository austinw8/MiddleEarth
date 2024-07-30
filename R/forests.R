#' Middle Earth forest data
#'
#' Geospatial shapefiles of forests throughout Middle Earth
#' Report ...
#'
#' @format ## `forests`
#' A data frame with 2033 rows and 8 columns:
#' \describe{
#'   \item{NAME}{forest name}
#'   \item{TYPE}{forest type}
#'   \item{PERIMETER}{forest perimeter}
#'   \item{ENCLOSED_A}{forest area}
#'   \item{ISLAND_ARE}{island area}
#'   \item{NUMBER}{forest data ID number}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

forests <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Forests.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(forests, overwrite = TRUE)
