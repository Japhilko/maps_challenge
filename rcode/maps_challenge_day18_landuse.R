# https://cran.r-project.org/web/packages/geodetector/vignettes/geodetector.html

data(land)
data(World)

tm_shape(land,  relative=FALSE) +
  tm_raster("cover_cls", title="Global Land Cover")


library(osmplotr)
library(tmaptools)
library(tmap)

gc <- geocode_OSM("Berlin")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="landuse", bbox = bbox)

# save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_berlin_landuse.Rdata"))

qtm(dat_osm,"landuse")

#############

gc <- geocode_OSM("Mannheim")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="landuse", bbox = bbox)

# save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/dat_osm_mannheim_landuse.Rdata"))

load(paste0("C:/Arbeit/geoscience/data/dat_osm_mannheim_landuse.Rdata"))

qtm(dat_osm,"landuse")



dat_osm2 <- dat_osm[dat_osm$landuse%in%names(sort(table(dat_osm$landuse),decreasing = T))[1:20],]

?tmap_options

tmap_mode("view")

tm_shape(dat_osm2) + tm_polygons("landuse") 


#30daymapcallenge day 18 landuse - a map of #Mannheim in Germany. I used the #rstats packages osmplotr and tmap. The data is from #Openstreetmap. My code is at https://github.com/Japhilko/maps_challenge #rspatial #r   