## code to prepare `towns` dataset goes here

towns <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Towns.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(towns, overwrite = TRUE)

