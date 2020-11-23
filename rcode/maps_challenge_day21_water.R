# Map challenge
# Day 21 - map with water
# Jan-Philipp Kolb
# Wed Oct 28 16:32:31 2020


library(osmplotr)

gc <- geocode_OSM("Saarland")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="natural",value="water", bbox = bbox)

save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_saarland_water.Rdata"))


gc <- geocode_OSM("Deutschland")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="natural",value="water", bbox = bbox)

save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_saarland_water.Rdata"))

png("maps/maps_challenge_day21.png")
qtm(dat_osm,fill = "blue",borders = "blue")
dev.off()



#30daymapchallenge day 21 - water. #Openstreetmap search with #rstats package osmplotr with key=natural and value=water for Saarland. #rspatial


# Links -------------------------------------------------------------------


# https://wiki.openstreetmap.org/wiki/Map_Features#Water_related


# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html