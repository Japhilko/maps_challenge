# 30 day map challenge
# Jan-Philipp Kolb
# elevation

# install.packages("elevatr")

library(elevatr)


load("C:/Arbeit/geoscience/data/dat_osm_barcelona_metro.Rdata")
elevation <- get_elev_raster(dat_osm, z = 9)
plot(elevation)


png("maps/maps_challenge_day24_elevation.png")
plot(elevation)
dev.off()


#30daymapchallenge day 24: elevation. For today I have the elevation of Barcelona. I used the #rstats package elevatr. Many thanks to @jhollist, @tarakc02 #rspatial, Alec L. Robitaille, @fawda123 and Mike Johnson 

# Another example ---------------------------------------------------------


set.seed(65.7)
examp_df <- data.frame(x = runif(3, min = -73, max = -72.5), y = runif(3, min = 42, 
                                                                       max = 43))
prj_dd <- "+proj=longlat +ellps=WGS84 +datum=WGS84 +no_defs"

# Create and example data.frame with additional columns
cats <- data.frame(category = c("H", "M", "L"))

examp_df2 <- data.frame(examp_df, cats)

# Create an example SpatialPoints
examp_sp <- SpatialPoints(examp_df, proj4string = CRS(prj_dd))

# Create an example SpatialPointsDataFrame
examp_spdf <- SpatialPointsDataFrame(examp_sp, proj4string = CRS(prj_dd), data = cats)

# Links -------------------------------------------------------------------

# https://cran.r-project.org/web/packages/elevatr/vignettes/introduction_to_elevatr.html
