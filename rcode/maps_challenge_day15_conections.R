# Map challenge
# Day 15 - map with connections
# Jan-Philipp Kolb
# Wed Oct 28 16:32:31 2020

library(tmaptools)
library(osmplotr)
library(tmap)

gc_gt <- geocode_OSM("Paris")

bbox <- get_bbox (c( 2.224122 ,48.815576  ,2.469760 ,48.902156 ))
dat_p <- extract_osm_objects (key = 'route',value="subway", bbox = bbox)

qtm(dat_p,"colors")

map <- osm_basemap(bbox = bbox, bg = c("#F5F5DC"))
map <- add_osm_objects(map, dat_p, col = c("#696969"))


plot(dat_p["colour"],main="Metro Lines of Paris")

# #30daymapchallenge day 15 connections. I used the #rstats/#rspatial package osmplotr to get the metro lines of Paris.


# Links -------------------------------------------------------------------


# https://cran.r-project.org/web/packages/sf/vignettes/sf5.html

# https://rdrr.io/cran/tmap/man/tm_lines.html

# https://wiki.openstreetmap.org/wiki/Map_Features


