## code to prepare `ruins` dataset goes here

ruins <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Ruins.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(ruins, overwrite = TRUE)
