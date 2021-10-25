# A map with points
# Jan-Philipp Kolb
# day 1 - points
# https://github.com/tjukanovt/30DayMapChallenge
# #30DayMapChallenge

path <- "C:/github/maps_challenge/mc2021/maps/"


library(maps)

png(paste0(path,"mapchallenge_day1_points.png"))
data(world.cities)
map()
map.cities(world.cities,col=rgb(0,0,1,.008),cex=1,pch=20,bg="gray")
dev.off()

# Ok the start is always hard ;-). My first map for the #30DayMapChallenge made with maps package by 
# Richard A. Becker, Allan R. Wilks and Ray Brownrigg

# My code is here: https://github.com/Japhilko/maps_challenge




# Saving the map ----------------------------------------------------------

png("maps/maps_challenge_day1.png")
  map()
  map.cities(world.cities,col=rgb(0,0,1,.05),cex=2,pch=20)
dev.off()



