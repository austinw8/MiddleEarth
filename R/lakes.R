#' Middle Earth lakes data
#'
#' Geospatial shapefiles of lakes throughout Middle Earth
#' Report ...
#'
#' @format ## `lakes`
#' A data frame with 256 rows and 7 columns:
#' \describe{
#'   \item{NAME}{lake name}
#'   \item{PERIMETER}{lake perimeter}
#'   \item{ENCLOSED_A}{lake area}
#'   \item{ISLAND_ARE}{island area}
#'   \item{type}{type}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

lakes <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Lakes.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(lakes, overwrite = TRUE)
