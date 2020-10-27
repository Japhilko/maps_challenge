# Prepare the map challenge
# Jan-Philipp Kolb
# Wed Oct 21 06:55:50 2020


# https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/


install.packages("osmar")

#install the osmdata, sf, tidyverse and ggmap package
if(!require("osmdata")) install.packages("osmdata")
if(!require("tidyverse")) install.packages("tidyverse")
if(!require("sf")) install.packages("sf")
if(!require("ggmap")) install.packages("ggmap")

#load packages
library(tidyverse)
library(osmdata)
library(sf)
library(ggmap)



q <- getbb("Worms") %>%
  opq() %>%
  add_osm_feature("amenity", "cinema")

str(q) #query structure


library(wiesbaden)


# https://cran.r-project.org/web/packages/wiesbaden/vignettes/using-wiesbaden.html

# Links -------------------------------------------------------------------

# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html

# https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/

# http://overpass-turbo.eu/
# https://wiki.openstreetmap.org/wiki/Map_Features
# http://osmar.r-forge.r-project.org/