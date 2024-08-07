## code to prepare `forests` dataset goes here

forests <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Forests.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(forests, overwrite = TRUE)
