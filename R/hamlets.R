#' Middle Earth hamlet data
#'
#' Geospatial shapefiles of hamlets (small settlements) throughout Middle Earth
#' Report ...
#'
#' @format ## `hamlets`
#' A data frame with 20 rows and 4 columns:
#' \describe{
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

hamlets <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Hamlets.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(hamlets, overwrite = TRUE)
