# Jan-Philipp Kolb
# Mon Oct 19 15:53:08 2020
# hexagons

library(hexbin)

x <- rnorm(10000)
y <- rnorm(10000)

plot(hexbin(x, y), main = "A little hexmap")




# To Do -------------------------------------------------------------------

# - get adequate data
# - data with latitude longitude coordinates


# Links -------------------------------------------------------------------

# https://cran.r-project.org/web/packages/GADMTools/vignettes/GADMTools_GRAPHICS.pdf

# https://cran.r-project.org/web/packages/hexbin/hexbin.pdf

# https://www.data-to-viz.com/graph/hexbinmap.html

# https://www.r-graph-gallery.com/hexbin-map


# https://www.data-to-viz.com/story/RegionWithValue.html

# https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/

# https://geocompr.robinlovelace.net/adv-map.html



# https://www.r-bloggers.com/2020/06/creating-an-hex-map-of-france-electricity-consumption/
