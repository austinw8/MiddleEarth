## code to prepare `roads` dataset goes here

roads <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Roads.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(roads, overwrite = TRUE)
