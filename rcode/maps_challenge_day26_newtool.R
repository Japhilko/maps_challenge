# map with a new tool
# Jan-Philipp Kolb


library(giscoR)

DNK_res60 <- gisco_get_countries(resolution = "60", country = "DNK")

DNK_res20 <-
  gisco_get_countries(resolution = "20", country = "DNK")
DNK_res10 <-
  gisco_get_countries(resolution = "10", country = "DNK")
DNK_res03 <-
  gisco_get_countries(resolution = "03", country = "DNK")

opar <- par(no.readonly = TRUE)
par(mfrow = c(2, 2), mar = c(3, 0, 2, 0))
plot(st_geometry(DNK_res60), main = "60M", col = "tomato")
plot(st_geometry(DNK_res20), main = "20M", col = "tomato")
plot(st_geometry(DNK_res10), main = "10M", col = "tomato")



png("maps/maps_challenge_day26_newtool.png")
plot(st_geometry(DNK_res03), main = "03M", col = c("#483D8B"))
dev.off()




title(sub = gisco_attributions(), line = 1)


# #30daymapchallenge day 26 - a new tool. I used the #rstats package giscoR. Download Map Data from GISCO API - Eurostat. It is from 2020-11-23 and I really like it! Thanks to Diego Hernangómez, Vincent Arel-Bundock and EuroGraphics
# 	Download Map Data from GISCO API - Eurostat

# Diego Hernangómez, Vincent Arel-Bundock, EuroGraphics

# Links -------------------------------------------------------------------


# https://dieghernan.github.io/giscoR/