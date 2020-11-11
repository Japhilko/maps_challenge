# Map Challenge
# Grid map
# Tue Oct 27 07:08:23 2020
# Jan-Philipp Kolb

data_path <- "C:/Arbeit/geoscience/data/"


load(paste0("C:/Arbeit/geoscience/data/","dat_osm_","Seckenheim","buildings",".Rdata"))

tm_shape(dat_osm) +
  tm_borders() + 
  tm_grid()


png("maps/mapchallenge_day10_grid.png")
tm_shape(dat_osm) +
  tm_borders() + 
  tm_grid()
dev.off()

# Day10 of #30daymapchallenge.



# Other data --------------------------------------------------------------


cit <- "Haarlem"

gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="building", bbox = bbox)

save(dat_osm,file=paste0(data_path,"dat_osm_Haarlem_buildings.RData"))



cit <- "Zandvoort"

gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="building", bbox = bbox)

save(dat_osm,file=paste0(data_path,"dat_osm_Zandvoort_buildings.RData"))

tm_shape(dat_osm) +
  tm_borders() + 
  tm_grid()


cit <- "Köln belgisches Viertel"

gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="building", bbox = bbox)

# My contribution to #30daymapchallenge. A grid map for xxx. Guess what it is ;-) I made this map again with the #rstats package osmplotr and ggplot2.



# Links -------------------------------------------------------------------


# https://github.com/mtennekes/tmap/issues/315

# https://wiki.openstreetmap.org/wiki/Map_Features#Railway

# https://cran.r-project.org/web/packages/mapcan/vignettes/riding_binplot_vignette.html