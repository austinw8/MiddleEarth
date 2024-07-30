#' Middle Earth stonefields data
#'
#' Geospatial shapefiles of stonefields throughout Middle Earth
#' Report ...
#'
#' @format ## `stonefields`
#' A data frame with 7 rows and 6 columns:
#' \describe{
#'   \item{PERIMETER}{stonefield perimeter}
#'   \item{ENCLOSED_A}{stonefield enclosed area}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

stonefields <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Stonefields.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(stonefields, overwrite = TRUE)
