#' Middle Earth rivers data
#'
#' Geospatial shapefiles of rivers throughout Middle Earth
#' Report ...
#'
#' @format ## `rivers`
#' A data frame with 2497 rows and 7 columns:
#' \describe{
#'   \item{LENGTH}{river length}
#'   \item{TYPE}{river type}
#'   \item{NAME}{river name}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

rivers <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Rivers.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(rivers, overwrite = TRUE)
