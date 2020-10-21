# Map with blue colors
# Jan-Philipp Kolb
# Tue Oct 20 06:57:16 2020



# Load libraries ----------------------------------------------------------

library(maptools)
library(colorRamps)

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


spplot(EUR,"X2017",col.regions=rgb(0,0,seq(0,1,.06)),col="lightblue")



# Links -------------------------------------------------------------------



# https://ec.europa.eu/eurostat/databrowser/view/migr_dubri/default/table?lang=en
# https://stackoverflow.com/questions/12682212/how-to-get-spplot-lattice-to-not-draw-borders-around-polygons
# https://www.datanovia.com/en/blog/top-r-color-palettes-to-know-for-great-data-visualization/
