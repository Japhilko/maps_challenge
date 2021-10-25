# A map with lines
# Jan-Philipp Kolb
# day 2 - lines
# https://github.com/tjukanovt/30DayMapChallenge

library(osmdata)


library(osmplotr)

datapath <- "C:/github/maps_challenge/data/"


bbox <- getbb("Penang")
dat_pa <- extract_osm_objects(key = 'highway',
                              value = "primary",
                              bbox = bbox)

dat_sa <- extract_osm_objects(key = 'highway',
                              value = "secondary",
                              bbox = bbox)

map <- osm_basemap(bbox = bbox, bg = c("#F5F5DC"))
map <- add_osm_objects(map, dat_pa, col = c("#00008B"))
map <- add_osm_objects(map, dat_sa, col = "green")
# further objects can be added
print_osm_map(map)



# Save data ---------------------------------------------------------------

save(dat_pa,file=paste0(datapath,"penang_lines_prim.RData"))
save(dat_sa,file=paste0(datapath,"penang_lines_sec.RData"))

# Links -------------------------------------------------------------------

# https://www.r-spatial.org/r/2018/10/25/ggplot2-sf.html
