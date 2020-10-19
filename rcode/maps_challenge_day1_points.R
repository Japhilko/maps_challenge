# A map with points
# Jan-Philipp Kolb
# day 1 - points
# https://github.com/tjukanovt/30DayMapChallenge


library(maps)

data(world.cities)

map()
map.cities(world.cities,col=rgb(0,0,1,.25),cex=20)
