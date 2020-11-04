# Map with blue colors
# Jan-Philipp Kolb
# Tue Oct 20 06:57:16 2020


library(tmap)
data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))


# @jakub_nowosad, @joelgombin, @sjewor, @rlzijdeman, @robinlovelace, Jannes Muenchow

# https://github.com/jannes-m/



library(tmap)
data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))


# UGA3 <- getData('GADM', country='UGA', level=3)

UGA3 <- readRDS("data/gadm36_UGA_3_sp.rds")
UGA3$fantasy_val <- runif(nrow(UGA3))

qtm(UGA3,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))

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

