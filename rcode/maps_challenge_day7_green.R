# Map Challenge
# Jan-Philipp Kolb
# Map with green
# Tue Oct 27 07:05:56 2020

library(tmap)

data(World)
World$fantasy_val <- runif(nrow(World))
qtm(World,"fantasy_val", fill.palette = rgb(0,seq(0,1,.1),0))

####


# Alternative -------------------------------------------------------------

# https://cran.r-project.org/web/packages/GADMTools/index.html

UGA3 <- getData('GADM', country='UGA', level=3)
plot(UGA3,col="green")
