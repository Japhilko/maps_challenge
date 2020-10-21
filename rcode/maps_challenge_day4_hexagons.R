# Jan-Philipp Kolb
# Mon Oct 19 15:53:08 2020
# hexagons

library(hexbin)

set.seed(101)
x <- rnorm(10000)
y <- rnorm(10000)
(bin <- hexbin(x, y))
## or
plot(hexbin(x, y + x*(x+1)/4),
     main = "(X, X(X+1)/4 + Y) where X,Y ~ rnorm(10000)")


# To Do -------------------------------------------------------------------

# - get adequate data
# - data with latitude longitude coordinates


# Links -------------------------------------------------------------------

# https://www.data-to-viz.com/graph/hexbinmap.html

# https://timogrossenbacher.ch/2016/12/beautiful-thematic-maps-with-ggplot2-only/

# https://geocompr.robinlovelace.net/adv-map.html



# https://www.r-bloggers.com/2020/06/creating-an-hex-map-of-france-electricity-consumption/