## code to prepare `hills` dataset goes here

hills <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Hills.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(hills, overwrite = TRUE)

