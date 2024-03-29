# Map challenge 
# A map with reds
# Jan-Philipp Kolb



# Load libraries ----------------------------------------------------------

library(maptools)
library(colorRamps)



# A simple map ------------------------------------------------------------



DEU2 <- getData('GADM', country='DEU', level=2)



UGA3 <- readRDS("data/gadm36_UGA_3_sp.rds")

# UGA3 <- getData('GADM', country='UGA', level=3)

UGA3$NAME_2 <- as.factor(UGA3$NAME_2) 

tmap::qtm(UGA3,"NAME_2")




# Get data ----------------------------------------------------------------

data("wrld_simpl")

dat <- read.csv("data/Dublin_stats_eurostat.csv")

ind <- match(dat$TIME,as.character(wrld_simpl$NAME))

dat$TIME[is.na(ind)]

names <- strsplit(x=dat$TIME,"[(]")
names <- trimws(unlist(lapply(names,function(x)x[1])))

# try to find Czechia

names_w <- as.character(wrld_simpl$NAME)

names_w[substr(names_w,1,1)=="C"]

names[names=="Czechia"] <- "Czech Republic"


ind <- match(names,wrld_simpl$NAME)
ind <- ind[!is.na(ind)]

EUR <- wrld_simpl[ind,]

ind2 <- match(EUR$NAME,names)
EUR@data$X2017 <- dat$X2017[ind2]


spplot(EUR,"X2017",col.regions=rgb(seq(0,1,.06)0,0),col="lightblue")



# Links -------------------------------------------------------------------



# https://ec.europa.eu/eurostat/databrowser/view/migr_dubri/default/table?lang=en
# https://stackoverflow.com/questions/12682212/how-to-get-spplot-lattice-to-not-draw-borders-around-polygons
# https://www.datanovia.com/en/blog/top-r-color-palettes-to-know-for-great-data-visualization/

