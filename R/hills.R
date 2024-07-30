#' Middle Earth hill data
#'
#' Geospatial shapefiles of hills throughout Middle Earth
#' Report ...
#'
#' @format ## `hills`
#' A data frame with 2179 rows and 7 columns:
#' \describe{
#'   \item{PERIMETER}{hill perimeter}
#'   \item{ENCLOSED_A}{enclosed hill area}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

hills <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Hills.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(hills, overwrite = TRUE)
