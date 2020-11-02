# Map challenge 
# A map with reds
# Jan-Philipp Kolb

library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))

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



