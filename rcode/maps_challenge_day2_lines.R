# A map with lines
# Jan-Philipp Kolb
# day 2 - lines
# https://github.com/tjukanovt/30DayMapChallenge


library(sf)
library(maptools)
library(sp)

data("wrld_simpl")

Africa <- wrld_simpl[wrld_simpl@data$REGION==2,]
Af <- coordinates(Africa)
plot(Africa)
points(x=Af[1,1],y=Af[1,2],col="red",pch=20)
lines(x = Af[1,], y= Af[2,])



library(linemap)




# Links -------------------------------------------------------------------

# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html
