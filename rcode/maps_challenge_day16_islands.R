# Map challenge
# Day 16 - map for islands
# Jan-Philipp Kolb
# Wed Oct 28 16:32:31 2020


# download data for the Fidschis

MYS3 <- raster::getData('GADM', country='MYS', level=3)
plot(MYS3,col="gray",border="white")


# https://www.rdocumentation.org/packages/datasets/versions/3.6.2/topics/islands