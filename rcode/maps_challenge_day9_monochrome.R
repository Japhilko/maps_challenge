# monochrome map - single color
# Jan-Philipp Kolb
# Wed Oct 21 06:28:11 2020



MYS3 <- raster::getData('GADM', country='MYS', level=3)
plot(MYS3,col="gray",border="white")