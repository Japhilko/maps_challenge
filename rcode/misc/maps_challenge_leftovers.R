# Maps challenge leftovers
# Jan-Philipp Kolb
# Tue Oct 20 07:18:15 2020



# Leftover line map -------------------------------------------------------


library(maptools)
library(sp)

data("wrld_simpl")

Africa <- wrld_simpl[wrld_simpl@data$REGION==2,]
Af <- coordinates(Africa)
plot(Africa)
points(x=Af[1,1],y=Af[1,2],col="red",pch=20)
segments(x0 = Af[1,1], y0= Af[2,1],x1=Af[1,2],y1=Af[2,2])



# Alternatives ------------------------------------------------------------



library(sf)

library(linemap)






library(readxl)


dat <- readxl::read_xlsx("data/MIGR_DUBRI1603170562431.xlsx")


dat


spplot(EUR,"X2017",col.regions=blue2red(100))