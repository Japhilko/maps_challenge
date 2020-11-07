# Map Challenge
# Jan-Philipp Kolb
# Map with green
# Tue Oct 27 07:05:56 2020


library(osmplotr)
library(tmap)


bbox <- get_bbox (c(8.4539 , 49.4805  , 8.4774 , 49.4943 ))
dat_M <- extract_osm_objects (key = 'building', bbox = bbox)

save(dat_M,file="data/osm_mannheim.Rdata")

png("maps/mapchallenge_day7_green.png")
qtm(dat_M,fill=c("#CAFF70"),borders=c("#7FFF00"))
dev.off()

png("maps/mapchallenge_day7_green.png")
tm_shape(dat_M) + tm_fill(c("#458B00")) +
  tm_layout (frame = FALSE, bg.color = "black")
dev.off()

# My contribution to day 7 of the #30daymapchallenge. I used #cran packages tmap and osmplotr. The data is downloaded via the Overpass API from #Openstreetmap 

library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(0,seq(0,1,.1),0))

####


# Alternative -------------------------------------------------------------

# https://cran.r-project.org/web/packages/GADMTools/index.html

UGA3 <- getData('GADM', country='UGA', level=3)
plot(UGA3,col="green")
