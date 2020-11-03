# A map with polygons
# Jan-Philipp Kolb
# day 3 - polygons
# https://github.com/tjukanovt/30DayMapChallenge



library(maptools)
data("wrld_simpl")
plot(wrld_simpl,col="red")

# Day 3 of the #30daymapchallenge. It is so easy to produce maps with R, only three lines of code.  
# Thanks to @RogerBivand, Nicholas Lewin-Koh and all the others for the maptools package 


png("maps/maps_challenge_day3.png")
  plot(wrld_simpl,col="#8B2323",bg="black",border="#7FFFD4")
dev.off()