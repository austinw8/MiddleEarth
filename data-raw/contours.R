## code to prepare `contours` dataset goes here

contours <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Contours_18.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(contours, overwrite = TRUE)

