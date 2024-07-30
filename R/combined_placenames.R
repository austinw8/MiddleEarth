#' Middle Earth regional name data
#'
#' Geospatial shapefiles of regional names throughout Middle Earth
#' Report ...
#'
#' @format ## `combined_placenames`
#' A data frame with 785 rows and 11 columns:
#' \describe{
#'   \item{LAYER}{region type}
#'   \item{NAME}{name of region}
#'   \item{FONT_NAME}{name of font used}
#'   \item{FONT_COLOR}{color of font used}
#'   \item{ORIGIN}{data source}
#'   \item{geometry}{geometry}
#'   ...
#' }
#' @source <https://github.com/jvangeld/ME-GIS>
#'

combined_placenames <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Combined_Placenames.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(combined_placenames, overwrite = TRUE)
