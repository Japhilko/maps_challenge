# A map with lines
# Jan-Philipp Kolb
# day 2 - lines
# https://github.com/tjukanovt/30DayMapChallenge

library(osmplotr)


library(osmplotr)
bbox <- getbb("Amsterdam")
dat_pa <- extract_osm_objects(key = 'highway',
                              value = "primary",
                              bbox = bbox)
dat_sa <- extract_osm_objects(key = 'highway',
                              value = "secondary",
                              bbox = bbox)

map <- osm_basemap(bbox = bbox, bg = c("#F5F5DC"))
map <- add_osm_objects(map, dat_pa, col = c("#00008B"))
map <- add_osm_objects(map, dat_sa, col = "green")
# further objects can be added
print_osm_map(map)


# Links -------------------------------------------------------------------

# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html
