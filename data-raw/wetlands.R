## code to prepare `wetlands` dataset goes here

wetlands <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Wetlands02.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(wetlands, overwrite = TRUE)
