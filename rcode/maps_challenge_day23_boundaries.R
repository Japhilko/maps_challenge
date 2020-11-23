# Create a map with boundaries
# zip code areas and comunity borders
# Jan-Philipp Kolb
# Fri Oct 23 12:48:43 2020


# MYS4 <- raster::getData('GADM', country='MYS', level=4)

library(tidycensus)
tmap_mode("plot")
data(county_laea)


png("maps/maps_challenge_day23.png")
qtm(county_laea,fill=c("#8B1A1A"))
dev.off()

#30daymapchallenge day 23 boundaries - here the US counties from the #rstats package tidycensus. Thanks to @kyle_e_walker, Matt Herman and @KrisEberwein! #rspatial #Rproject