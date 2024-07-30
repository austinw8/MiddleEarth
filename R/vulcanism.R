#' Middle Earth vulcanism data
#'
#' Geospatial shapefiles of volcanos throughout Middle Earth
#' Report ...
#'
#' @format ## `vulcanism`
#' A data frame with 110 rows and 7 columns:
#' \describe{
#'   \item{NAME}{volcano name}
#'   \item{PERIMETER}{volcano perimeter}
#'   \item{ENCLOSED_A}{volcano area}
#'   \item{ISLAND_ARE}{island area}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

vulcanism <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Vulcanism.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(vulcanism, overwrite = TRUE)
