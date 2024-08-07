## code to prepare `vulcanism` dataset goes here

vulcanism <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Vulcanism.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(vulcanism, overwrite = TRUE)
