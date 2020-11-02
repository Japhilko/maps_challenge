# A map with points
# Jan-Philipp Kolb
# day 1 - points
# https://github.com/tjukanovt/30DayMapChallenge
# #30DayMapChallenge

library(maps)
data(world.cities)
map()
map.cities(world.cities,col=rgb(0,0,1,.05),cex=2,pch=20)

# Ok the start is always hard ;-). My first map for the #30DayMapChallenge made with maps package by 
# Richard A. Becker, Allan R. Wilks and Ray Brownrigg

# My code is here: https://github.com/Japhilko/maps_challenge




# Saving the map ----------------------------------------------------------

png("maps/maps_challenge_day1.png")
  map()
  map.cities(world.cities,col=rgb(0,0,1,.05),cex=2,pch=20)
dev.off()
