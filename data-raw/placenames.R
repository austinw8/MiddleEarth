## code to prepare `placenames` dataset goes here

placenames <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Combined_Placenames.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(placenames, overwrite = TRUE)
