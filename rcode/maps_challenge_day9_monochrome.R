# monochrome map - single color
# Jan-Philipp Kolb
# Wed Oct 21 06:28:11 2020


library(tmaptools)
library(osmplotr)

geocode_OSM("Trier")

bbox <- get_bbox (c(6.551792 , 49.698600  , 6.747150 , 49.857117 ))
dat_T <- extract_osm_objects (key = 'building', bbox = bbox)


save(dat_T,file="C:/Arbeit/geoscience/data/dat_trier.Rdata")


gc_sip <- geocode_OSM("Sippersfeld")

bbox <- get_bbox (c( 7.903751, 49.528091 , 7.973839 ,49.565046  ))
dat_S <- extract_osm_objects (key = 'building', bbox = bbox)

qtm(dat_S)

# Mark Padgham 

# Day 8 of the #30daymapchallenge. A yellow map of George Town, Penang in Malaysia. I used #rstats packages tmap and osmplotr. Thanks to @bikesRdata and many more

gc_pen <- geocode_OSM("Penang")

gc_gt <- geocode_OSM("George Town")

bbox <- get_bbox (c( 100.2983 ,5.3727  ,100.3574  ,5.4369))
dat_p <- extract_osm_objects (key = 'building', bbox = bbox)

png("maps/mapchallenge_day8_yellow.png")
  qtm(dat_p,fill="yellow",borders=c("#FFD700"))
dev.off()

MYS1 <- raster::getData('GADM', country='MYS', level=1)
plot(MYS3,col="gray",border="white")

