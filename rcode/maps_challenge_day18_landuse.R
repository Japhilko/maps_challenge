# https://cran.r-project.org/web/packages/geodetector/vignettes/geodetector.html

data(land)
data(World)

tm_shape(land,  relative=FALSE) +
  tm_raster("cover_cls", title="Global Land Cover")

