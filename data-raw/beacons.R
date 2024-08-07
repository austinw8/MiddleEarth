## code to prepare `DATASET` dataset goes here

beacons <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Beacons.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(beacons, overwrite = TRUE)

