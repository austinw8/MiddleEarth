helper_contours <- sf::read_sf("C:/Users/austi/OneDrive/Desktop/R/data/ME-GIS/HelperContours.shp") |>
  dplyr::mutate(across(where(is.character), ~iconv(., from = "ISO-8859-1", to = "UTF-8")))

usethis::use_data(helper_contours, overwrite = TRUE)
