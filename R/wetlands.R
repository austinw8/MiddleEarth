#' Middle Earth wetlands data
#'
#' Geospatial shapefiles of wetlands throughout Middle Earth
#' Report ...
#'
#' @format ## `wetlands`
#' A data frame with 181 rows and 7 columns:
#' \describe{
#'   \item{NAME}{wetlands name}
#'   \item{PERIMETER}{wetlands perimeter}
#'   \item{ENCLOSED_A}{wetlands area}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

wetlands <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Wetlands02.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(wetlands, overwrite = TRUE)
