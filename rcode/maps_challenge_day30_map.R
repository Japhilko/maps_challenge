#30daymapchallenge


library(tmaptools)
library(osmplotr)

cit <- "Mannheim"

gc <- geocode_OSM(cit)
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (value="highway", bbox = bbox)

save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_",cit,"_highways",".Rdata"))

load("C:/Arbeit/geoscience/data/dat_osm_Den Haaghighways.Rdata")

#30daymapchallenge

map <- osm_basemap(bbox = bbox, bg = c("black"))
map <- add_osm_objects(map, dat_osm, col = rgb(.4,.4,1,.4))


i <- 1

png(paste0("maps/mapchallenge_day30_map_",i,".png"))
  print_osm_map(map)
dev.off()

i <- i+1






# Links -------------------------------------------------------------------



# https://docs.ropensci.org/osmplotr/articles/basic-maps.html