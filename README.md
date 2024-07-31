# MiddleEarth

<!-- badges: start -->

<!-- badges: end -->

The goal of MiddleEarth is to provide a high-resolution digital elevation model of Tolkein's Middle Earth.

## Acknowledgements

This package includes geospatial data provided by the [ME_DEM project](https://github.com/jvangeld/ME-GIS). Special thanks to the ME_DEM team for making their data available for use in this package. Their work has been invaluable in bringing Middle-earth to life in a geospatial context.

## Package Content

This package contains multiple geographical data sets, including:

-   Beacons

-   Cities/Citadels/Hamlets/Towns

-   Coastline

-   Contours (for aesthetic mapping)

-   Forests

-   Hills

-   Lakes/Rivers

-   Mountains

-   Place names/Regions

-   Roads

-   Ruins/Stone fields

-   Towers/Keeps

-   Volcano's

-   Wetlands

## Installation

You can install the development version of MiddleEarth from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("austinw8/MiddleEarth")
```

## Usage

MiddleEarth allows you to quickly access and use geospatial data in order to create digital renderings of Tolkein's Middle Earth. These can be used with ggplot2 to create visual representations of the continent.

``` r
# Load the MiddleEarth package

library(MiddleEarth)

# Load the necessary data

coastline <- MiddleEarth::coastline 
rivers <- MiddleEarth::rivers 
lakes <- MiddleEarth::lakes 
forests <- MiddleEarth::forests 
mountains <- MiddleEarth::mountains 
placenames <- MiddleEarth::placenames

# Filter places

places <- placenames |> 
  filter(NAME %in% c("Hobbiton", "Rivendell", "Edoras", "Minas Tirith")) |>  
  st_as_sf() # Ensure places is an sf object

# Plot the map

ggplot() + 
geom_sf(data = coastline, linewidth = 0.25, color = "grey50") + 
geom_sf(data = rivers, linewidth = 0.2, color = "skyblue", alpha = 0.5) + 
geom_sf(data = lakes, linewidth = 0.2, color = "skyblue", fill = "skyblue") + 
geom_sf(data = forests, linewidth = 0, fill = "darkgreen", alpha = 0.5) + 
geom_sf(data = mountains, linewidth = 0.25, linetype = "dashed") + 
geom_sf(data = places) + 
geom_sf_label(data = places, aes(label = NAME), nudge_y = miles_to_meters(40)) + 
coord_sf(xlim = c(300000, 1800000), ylim = c(300000, 1800000)) + 
theme_void() + 
theme(plot.background = element_rect(fill = "white"))
```

Given the quality of the geographic data, we can zoom in and get much more detail for specific regions. For instance, we can zoom in on just the Shire.

``` r
shire_towns <- placenames |>  
  filter(LAYER == "TownNames")

hobbiton <- places |> 
  filter(NAME == "Hobbiton") |> 
  mutate(geometry_x = map_dbl(geometry, ~as.numeric(.)[1]), geometry_y = map_dbl(geometry, ~as.numeric(.)[2]))

ggplot() +
  geom_sf(data = rivers, linewidth = 0.45, color = clr_blue, alpha = 0.5) +
  geom_sf(data = roads) +
  geom_sf(data = shire_towns, size = 2) +
  geom_sf_label(data = shire_towns, aes(label = NAME), nudge_y = miles_to_meters(3),
                family = "Overpass ExtraBold", fontface = "plain") +
  coord_sf(xlim = c(hobbiton$geometry_x - miles_to_meters(30), 
                    hobbiton$geometry_x + miles_to_meters(60)),
           ylim = c(hobbiton$geometry_y - miles_to_meters(35), 
                    hobbiton$geometry_y + miles_to_meters(20)))
```
