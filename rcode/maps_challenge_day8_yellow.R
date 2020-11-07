# Map Challenge
# Day 8 - Map with yellow
# Jan-Philipp Kolb

library(osmplotr)
library(tmap)


gc_gt <- geocode_OSM("George Town")

bbox <- get_bbox (c( 100.2983 ,5.3727  ,100.3574  ,5.4369))
dat_p <- extract_osm_objects (key = 'building', bbox = bbox)

png("maps/mapchallenge_day8_yellow.png")
qtm(dat_p,fill="yellow",borders=c("#FFD700"))
dev.off()



library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = c("#FFFF00", "#FFF68F", "#EEE685", "#CDCD00", "#8B8B00"))


# Text --------------------------------------------------------------------

# The colour values for yellow have been chosen with the Rstudio Addin created by Dean Attali
# @daattali

# Links -------------------------------------------------------------------

# https://deanattali.com/blog/colourpicker-ggmarginal-gadgets/
