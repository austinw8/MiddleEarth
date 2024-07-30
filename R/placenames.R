#' Middle Earth place name data
#'
#' Geospatial shapefiles of place names throughout Middle Earth
#' Report ...
#'
#' @format ## `placenames`
#' A data frame with 785 rows and 11 columns:
#' \describe{
#'   \item{LAYER}{place name type}
#'   \item{NAME}{place name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

placenames <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Combined_Placenames.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(placenames, overwrite = TRUE)
