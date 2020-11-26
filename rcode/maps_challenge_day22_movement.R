# 30 Day map challenge - Day 22 - movement
# Jan-Philipp Kolb
# 22.11.2020


library(osmplotr)
library(ggplot2)
gc <- geocode_OSM("Barcelona")
bbox <- get_bbox (gc$bbox)
dat_osm <- extract_osm_objects (key="route",value="subway", bbox = bbox)
ggplot() + geom_sf(data = dat_osm,aes(col=ref))


png("maps/maps_challenge_day22.png")
ggplot() + geom_sf(data = dat_osm,aes(col=ref))
dev.off()


#30daymapchallenge day 22: movement. For today I have the Metro lines of Barcelona. I used the #rstats packages #ggplot2 and osmplotr. #rspatial
# https://bookdown.org/yihui/rmarkdown-cookbook/animation.html


save(dat_osm,file="C:/Arbeit/geoscience/data/dat_osm_barcelona_metro.Rdata")

# Further attempts --------------------------------------------------------


qtm(dat_osm,borders="ref")

library(move)
library(hflights)

library(gganimate)

# install.packages("hflights")
# install.packages("gganimate")


# https://github.com/anitagraser/movingpandas

head(hflights)



# Links -------------------------------------------------------------------

# https://wiki.openstreetmap.org/wiki/Map_Features#Roads

# https://ggplot2.tidyverse.org/reference/ggsf.html

# https://bookdown.org/yihui/rmarkdown-cookbook/animation.html

# https://anitagraser.com/movement-data-in-gis/

# https://www.esri.com/en-us/arcgis/products/data/data-portfolio/business-behavioral

# https://cran.r-project.org/web/packages/fishmove/fishmove.pdf

# https://www.movebank.org/cms/webapp?gwt_fragment=page=studies,path=study51075375