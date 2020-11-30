#30daymapchallenge
# Jan-Philipp Kolb
# 



#---------------------#
# hello world tmap

library(tmap)
data("World")
qtm(World, fill="pop_est",fill.title="population")


library(tidycensus)
tmap_mode("plot")

data(county_laea)

qtm(county_laea)


data(NLD_prov)
data(NLD_muni)

# http://zevross.com/blog/2018/10/02/creating-beautiful-demographic-maps-in-r-with-the-tidycensus-and-tmap-packages/#download-census-data





png("maps/maps_challenge_day20.png")
qtm(NLD_muni,"population")
dev.off()


#30daymapchallenge - day 20 a map of population of municipalities in the Netherlands. Made with tmap package. #rstata #rspatial



# Links -------------------------------------------------------------------


# https://worldpopulationreview.com/countries/united-states-population

# http://zevross.com/blog/2018/10/02/creating-beautiful-demographic-maps-in-r-with-the-tidycensus-and-tmap-packages/#download-census-data

# https://stackoverflow.com/questions/32622174/plotting-population-density-map-in-r-with-geom-point