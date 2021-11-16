# Jan-Philipp Kolb
# Tue Nov 09 20:47:40 2021
# 30daymapchallenge - monochrome


library(osmdata)
library(osmplotr)
data_path <- "C:/Arbeit/Forschung/geoscience/data/"

bbox <- getbb("Paris")

dat_pa <- extract_osm_objects(key = 'highway',
                              value = "primary",
                              bbox = bbox)
dat_sa <- extract_osm_objects(key = 'highway',
                              value = "secondary",
                              bbox = bbox)

dat_ta <- extract_osm_objects(key = 'highway',
                              value = "tertiary",
                              bbox = bbox)

dat_res <- extract_osm_objects(key = 'highway',
                               value = "residential",
                               bbox = bbox)

trunk <- extract_osm_objects(key = 'highway',
                             value = "trunk",
                             bbox = bbox)
motorway <- extract_osm_objects(key = 'highway',
                                value = "motorway",
                                bbox = bbox)

unclassified <- extract_osm_objects(key = 'highway',
                                    value = "unclassified",
                                    bbox = bbox)

map <- osm_basemap(bbox = bbox, bg = c("gray"))
map <- add_osm_objects(map, dat_pa, col = c("black"),size=1.1)
map <- add_osm_objects(map, dat_sa, col = c("white"))
map <- add_osm_objects(map, dat_ta, col = c("black"))
map <- add_osm_objects(map, dat_res, col = "black")
map <- add_osm_objects(map,trunk,col="black",size=1.1)
map <- add_osm_objects(map,motorway,col="black",size=1.2)
map <- add_osm_objects(map,unclassified,col="lightgray",size=.9)

# further objects can be added
print_osm_map(map)

save(dat_pa,dat_sa,dat_ta,dat_res,trunk,motorway,unclassified,
     file=paste0(datapath,
                        "paris_roads.RData"))


save(dat_pa,file=paste0(datapath,
                        "worms_lines_prim.RData"))
save(dat_sa,file=paste0(datapath,
                        "worms_lines_sec.RData"))
save(dat_ta,file=paste0(datapath,
                        "worms_lines_ter.RData"))
save(dat_res,file=paste0(datapath,
                         "worms_lines_res.RData"))
