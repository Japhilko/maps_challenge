# Map with blue colors
# Jan-Philipp Kolb
# Tue Oct 20 06:57:16 2020


library(tmap)
data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))



FRA3 <- raster::getData('GADM', country='FRA', level=3)
FRA3$fantasy_val <- runif(nrow(FRA3))

qtm(FRA3,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))


# @jakub_nowosad, @joelgombin, @sjewor, @rlzijdeman, @robinlovelace, 

# Jannes Muenchow

# https://github.com/jannes-m/



FRA4 <- raster::getData('GADM', country='FRA', level=4)
FRA4$fantasy_val <- runif(nrow(FRA4))

png("maps/map_challenge_day5.png")
  qtm(FRA4,"fantasy_val", fill.palette = rgb(0,0,seq(0,1,.1),0),borders = "blue")
dev.off()

# Day5: #30DayMapChallenge - Cantons in France! Made with the great #rstats packages raster and tmap. Thanks to @jakub_nowosad, @RogerBivand, @joelgombin, @sjewor, @rlzijdeman, @robinlovelace, 

library(tmap)
data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))


# UGA3 <- getData('GADM', country='UGA', level=3)

UGA3 <- readRDS("data/gadm36_UGA_3_sp.rds")
UGA3$fantasy_val <- runif(nrow(UGA3))

qtm(UGA3,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))




UGA3 <- getData('GADM', country='UGA', level=3)


# Author: Martijn Tennekes [aut, cre],
# Jakub Nowosad [ctb],
# Joel Gombin [ctb],
# Sebastian Jeworutzki [ctb],
# Kent Russell [ctb],
# Richard Zijdeman [ctb],
# John Clouse [ctb],
# Robin Lovelace [ctb],
# Jannes Muenchow [ctb]


# @jakub_nowosad, @joelgombin, @sjewor, @rlzijdeman, @robinlovelace, Jannes Muenchow

# https://github.com/jannes-m/

# Jacob van Etten [ctb],
# Michael Sumner [ctb],
# Joe Cheng [ctb],
# Dan Baston [ctb],
# Andrew Bevan [ctb],
# Roger Bivand [ctb],
# Lorenzo Busetto [ctb],
# Mort Canty [ctb],
# David Forrest [ctb],
# Aniruddha Ghosh [ctb],
# Duncan Golicher [ctb],
# Josh Gray [ctb],
# Jonathan A. Greenberg [ctb],
# Paul Hiemstra [ctb],
# Kassel Hingee [ctb],
# Institute for Mathematics Applied Geosciences [cph],
# Charles Karney [ctb],
# Matteo Mattiuzzi [ctb],
# Steven Mosher [ctb],
# Jakub Nowosad [ctb],
# Edzer Pebesma [ctb],
# Oscar Perpinan Lamigueiro [ctb],
# Etienne B. Racine [ctb],
# Barry Rowlingson [ctb],
# Ashton Shortridge [ctb],
# Bill Venables [ctb],
# Rafael Wueest [ctb]