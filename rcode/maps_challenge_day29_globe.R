#30daymapchallenge
# Jan-Philipp Kolb
# 

# install.packages("globe")

library(globe)

globeearth()

png("maps/maps_challenge_day29_globe.png")
    globeearth(eye=place("everest"),col="royalblue")
dev.off()


#30daymapchallenge day 29. topic today is the globe. I used the #rstats package globe. Thanks to Adrian Baddeley, Thomas Lawrence and @egerubak #rspatial 


# https://cran.r-project.org/web/packages/globe/globe.pdf