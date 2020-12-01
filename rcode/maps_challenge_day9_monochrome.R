# monochrome map - single color
# Jan-Philipp Kolb
# Wed Oct 21 06:28:11 2020


library(tmaptools)
library(osmplotr)

cit <- "Wiesbaden"

get_osm_dat <- function(cit,value="highway"){
  gc <- geocode_OSM(cit)
  bbox <- get_bbox (gc$bbox)
  dat_osm <- extract_osm_objects (value, bbox = bbox)
  return(dat_osm)
  
}

cit <- "Seckenheim"
dat_osm <- get_osm_dat(cit)

# save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_",cit,"buildings",".Rdata"))

save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_",cit,"highways",".Rdata"))


map <- osm_basemap(bbox = bbox, bg = c("#F5F5DC"))


map <- add_osm_objects(map, dat_osm, col = c("#696969"))


print_osm_map(map)

map <- add_osm_objects(map, dat_sa, col = "green")




png("maps/mapchallenge_day9_monochrome.png")
qtm(dat_osm,fill=c("#B0B0B0"),borders=c("#8B7D6B"))
dev.off()


# Another try -------------------------------------------------------------



cit <- "Mannheim"
dat_osm <- get_osm_dat(cit)

save(dat_osm,file=paste0("C:/Arbeit/geoscience/data/","dat_osm_",cit,"buildings",".Rdata"))





####################################

# My Day9 #30daymapchallenge. A monochrome map of #Trier in Germany. I made this map with the #rstats #osmplotr package. 


# Easy Example ------------------------------------------------------------



cit <- "Wiesbaden"


gc <- geocode_OSM(cit)

bbox <- get_bbox (c(8.110603 ,49.993275 , 8.386187, 50.152023 ))
dat_osm <- extract_osm_objects (key = 'building', bbox = bbox)


save(dat_osm,file="C:/Arbeit/geoscience/data/dat_osm_trier.Rdata")


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


# Links -------------------------------------------------------------------

# https://tlorusso.github.io/geodata_workshop/tmap_package

# https://journal.r-project.org/archive/2019/RJ-2019-041/index.html
