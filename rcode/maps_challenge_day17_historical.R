# Map challenge
# Day 17 - create a historical map
# Jan-Philipp Kolb
# Wed Oct 28 16:32:31 2020

  
c1880 <- rgdal::readOGR("C:/Users/X230/Downloads/1880/cntry1880.shp")
  
tmap::qtm(c1880,fill="royalblue",borders = "lightgray")


# #30daymapchallenge day 17 - historical map - borders of 1880. Historical country GIS data from Thinkquest. Made with tmap #rstats #rspatial package. 

  
# data from:
# http://web.archive.org/web/20080328104539/http://library.thinkquest.org:80/C006628/download.html




# Links -------------------------------------------------------------------



# Historical country GIS data from Thinkquest
  
  # https://www.oldmapsonline.org/
  
  # https://de.wikipedia.org/wiki/Tabula_Peutingeriana
  
  # https://www.oldmapsonline.org/ 
  
  # http://chartae-antiquae.cz/en/maps/37972
  
  # https://user.rub.de/media/spsf.pdf
  