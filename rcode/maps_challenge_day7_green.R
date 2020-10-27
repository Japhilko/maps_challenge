# Map Challenge
# Jan-Philipp Kolb
# Map with green
# Tue Oct 27 07:05:56 2020

library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(0,seq(0,1,.1),0))
