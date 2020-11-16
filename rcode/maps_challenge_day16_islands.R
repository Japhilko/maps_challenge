# Map challenge
# Day 16 - map for islands
# Jan-Philipp Kolb
# Wed Oct 28 16:32:31 2020


library(tmap)


# Get the data for Fidschi islands ----------------------------------------


# download data for the Fidschis

FJI2 <- raster::getData('GADM', country='FJI', level=2)
VUT2 <- raster::getData('GADM', country='VUT', level=2)


tmap_mode("plot")

# plot(MYS3,col="gray",border="white")

png("maps/mapchallenge_day16_islands.png")
  qtm(VUT2,fill="green")
dev.off()


# Day 16 of #30daymapchallenge - a map of islands. Here I have the Islands of #Vanatu. I used the #rstats/#rspatial packages raster and tmap for this. Data is from https://gadm.org/.

# Links -------------------------------------------------------------------



# https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/islands

# https://laendercode.net/de/country/fj
# https://laendercode.net/de/country/vu