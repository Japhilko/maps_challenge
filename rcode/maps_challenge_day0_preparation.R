# Prepare the map challenge
# Jan-Philipp Kolb
# Wed Oct 21 06:55:50 2020



# To Do List --------------------------------------------------------------

# find some data on climate_change - day 14
# find data for connections - day 15
# find data on islands - day 16
# find data for a historical map




# https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/



# Coloring ----------------------------------------------------------------


# https://cran.r-project.org/web/packages/colorspace/vignettes/hcl-colors.pdf



# Install further packages ------------------------------------------------


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



library(historydata)
library(ggplot2)
head(us_national_population)

ggplot(us_national_population,
       aes(x = year, y = population)) +
  geom_line() +
  ggtitle("Population of the United States, 1790-2010")


# https://cran.r-project.org/web/packages/wiesbaden/vignettes/using-wiesbaden.html

# Links -------------------------------------------------------------------

# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html

# https://dominicroye.github.io/en/2018/accessing-openstreetmap-data-with-r/

# http://overpass-turbo.eu/
# https://wiki.openstreetmap.org/wiki/Map_Features
# http://osmar.r-forge.r-project.org/