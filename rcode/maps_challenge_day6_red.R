# Map challenge 
# A map with reds
# Jan-Philipp Kolb

library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(seq(0,1,.1),0,0))


