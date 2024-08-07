## code to prepare `coastline` dataset goes here

coastline <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Coastline2.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(coastline, overwrite = TRUE)

