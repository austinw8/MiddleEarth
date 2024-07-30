#' Middle Earth mountains data
#'
#' Geospatial shapefiles of mountains throughout Middle Earth
#' Report ...
#'
#' @format ## `mountains`
#' A data frame with 10 rows and 3 columns:
#' \describe{
#'   \item{name}{mountain range name}
#'   \item{fontsizeKm}{fontzize in km}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

mountains <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Mountains_Anno.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(mountains, overwrite = TRUE)
