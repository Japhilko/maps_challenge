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

map <- osm_basemap(bbox = bbox, bg = c("#CDAA7D"))
map <- add_osm_objects(map, dat_osm, col = rgb(.4,.4,1,.3))


i <- 1

png(paste0("maps/mapchallenge_day30_map_",i,".png"))
  print_osm_map(map)
dev.off()

i <- i+1



# Another try -------------------------------------------------------------

dat_H <- extract_osm_objects (key = 'highway', bbox = bbox)
dat_P <- extract_osm_objects (key = 'park', bbox = bbox)
dat_G <- extract_osm_objects (key = 'landuse', value = 'grass', bbox = bbox)
dat_B <- extract_osm_objects (key = 'building', bbox = bbox)

map <- osm_basemap (bbox = bbox, bg = 'black')
map <- add_osm_objects (map, dat_B, col = rgb(.4,1,.4,.1))
map <- add_osm_objects(map, dat_osm, col = rgb(.4,.4,1,.1))

# map <- add_osm_objects (map, dat_H, col = 'gray80')
#map <- add_osm_objects (map, dat_P, col = 'darkseagreen')
#map <- add_osm_objects (map, dat_G, col = 'darkseagreen1')

print_osm_map (map)

# For the final of the #30daymapchallenge I have a map of Penang in Malaysia. I used the #rstats package osmplotr and tmap for this. The challenge was great fun. Thank you @tjukanov! Great maps e.g. @Kartokobri @MapsByAntonia @pheeelicks @richard_vogg
 #rspatial. #GeographyTeacher  


# Links -------------------------------------------------------------------



# https://docs.ropensci.org/osmplotr/articles/basic-maps.html

# https://wiki.openstreetmap.org/wiki/OSM_file_formats



# Challenge of last year

# https://david.frigge.nz/30DayMapChallenge/index.html

# https://docs.ropensci.org/osmplotr/#5%20highlighting%20clusters


# search for:
# twitter code challenge