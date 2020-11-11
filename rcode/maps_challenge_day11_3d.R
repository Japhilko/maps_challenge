# Map challenge - https://github.com/tjukanovt/30DayMapChallenge
# 3d map
# Jan-Philipp Kolb
# Tue Oct 27 16:33:55 2020


# Interactive map ---------------------------------------------------------

# Day11 of #30daymapchallenge is hard for me. This is my proposition: https://rpubs.com/Jan-Philipp_Kolb/689525 movement in three directions is possible. With that easy example implemented in the fantastic #rstats package tmap.

library(tmap)
tmap_mode("view")

data_path <- "C:/Arbeit/geoscience/data/"
load(paste0(data_path,"dat_osm_Haarlem_buildings.RData")

tm_shape(World) +
  tm_polygons("HPI")





library(plot3D)


x <- y <- runif(100)
z <- rnorm(100)
M <- mesh(x, y, z)
R <- with (M, sqrt(x^2 + y^2 +z^2))
p <- sin(2*R)/(R+1e-3)
isosurf3D(x, y, z, colvar = p, level = 0)

# Links -------------------------------------------------------------------


#https://cran.r-project.org/web/packages/tmap/vignettes/tmap-getstarted.html

# https://www.tylermw.com/a-step-by-step-guide-to-making-3d-maps-with-satellite-imagery-in-r/

# https://osm-3d.org/home.en.htm

# https://osm-3d.org/home.en.htm

# https://github.com/Jorl17/open-elevation

# https://wiki.openstreetmap.org/wiki/Open-Elevation


# https://colinfay.me/rstats-create-a-pixel-map-with-r/

# https://www.rayshader.com/