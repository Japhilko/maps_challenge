# Map Challenge
# Day 8 - Map with yellow
# Jan-Philipp Kolb


library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = c("#FFFF00", "#FFF68F", "#EEE685", "#CDCD00", "#8B8B00"))


# Text --------------------------------------------------------------------

# The colour values for yellow have been chosen with the Rstudio Addin created by Dean Attali
# @daattali

# Links -------------------------------------------------------------------

# https://deanattali.com/blog/colourpicker-ggmarginal-gadgets/
