towers_and_keeps <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/Towers_and_Keeps.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(towers_and_keeps, overwrite = TRUE)
