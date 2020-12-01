# maps_challenge_day27_big_small_data.R
# Jan-Philipp Kolb
# Fri Nov 27 06:23:37 2020


#30daymapchallenge day 27 - big or small data. I decided to choose small data, because I do not have much time for that. I used #rstats package leaflet for this. I only need to numbers for the coordinates. This is one of my favorite places. I would love to return there next year.

library(tmaptools)
library(leaflet)

geocode_OSM("Bloemendaal aan Zee")



leaflet() %>%
  addTiles() %>%  
  addMarkers(lng=4.54491   , lat=52.40262 ,
             popup="One of my favorite places")




# Links -------------------------------------------------------------------

# https://www.earthdatascience.org/courses/earth-analytics/get-data-using-apis/leaflet-r/


