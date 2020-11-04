# Jan-Philipp Kolb
# Mon Oct 19 15:53:08 2020
# hexagons

library(hexbin)

x <- rnorm(10000)
y <- rnorm(10000)





png("maps/maps_challenge_day4.png")
gplot.hexbin(hexbin(x, y), main = "A little hexmap")
dev.off()



# Second attempt ----------------------------------------------------------

x <- c(rnorm(5000),rnorm(5000,4,5))
y <- c(rnorm(5000),rnorm(5000,2,5))
bin <- hexbin(x,y)

pens <- cbind(c("#0000EE", "#0000CD", "#00008B"),
              c("#8EE5EE", "#8EE5EE", "#53868B"))
plot(bin, style = "nested.lattice", pen=pens,xlab="",ylab="")


# Third attempt -----------------------------------------------------------

bin <- hexbin(x,y,xbins=25)
plot(bin, style="lattice", legend=FALSE,
     minarea=1, maxarea=1, border="white")


# Another one -------------------------------------------------------------

## 1) simple binning of spherical normal:
x <- rnorm(10000,1,2)
y <- rnorm(10000)
bin <- hexbin(x,y)

## Plot method for hexbin !
## ---- ------     --------
gplot.hexbin(bin,colramp = plinrain(10,1,256))

# nested lattice
plot(bin, style= "nested.lattice")

library(ggplot2)


x <- c(rnorm(10000,1,2),rnorm(10000,-5,8))
y <- rnorm(10000,2,5)

x <- c(rnorm(10000,1,2))
y <- rnorm(10000,2,5)


bin <- data.frame(x,y)

png("maps/maps_challenge_day4.png")
d <- ggplot(bin, aes(x, y))
d + geom_hex()
dev.off()

# Day3 of #30DayMapChallenge: Sorry I had not enough time for adequate data. 
# This gives me the opportunity to thank @hadleywickham, @winston_chang, @_lionelhenry and all the others for @rstats package ggplot2.
# Here is a fantasy mountain, created with ggplot2 by 


# https://docs.ropensci.org/osmplotr/

library(osmplotr)
library(tmaptools)

wb_gc <- tmaptools::geocode_OSM("Wiesbaden")
bbox <- get_bbox (c(8.110603 ,50  ,8.286187 ,50.152023 ))
dat_B <- extract_osm_objects (key = 'amenity', value="cafe" ,bbox = bbox)

# To Do -------------------------------------------------------------------

# - get adequate data
# - data with latitude longitude coordinates


# Links -------------------------------------------------------------------


# https://ggplot2.tidyverse.org/reference/geom_hex.html

# https://cran.r-project.org/web/packages/GADMTools/vignettes/GADMTools_GRAPHICS.pdf

# https://cran.r-project.org/web/packages/hexbin/hexbin.pdf

# https://www.data-to-viz.com/graph/hexbinmap.html

# https://www.r-graph-gallery.com/hexbin-map


# https://www.data-to-viz.com/story/RegionWithValue.html

# https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/

# https://geocompr.robinlovelace.net/adv-map.html



# https://www.r-bloggers.com/2020/06/creating-an-hex-map-of-france-electricity-consumption/
