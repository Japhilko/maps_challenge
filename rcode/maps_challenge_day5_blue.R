# Map with blue colors
# Jan-Philipp Kolb
# Tue Oct 20 06:57:16 2020



# Load libraries ----------------------------------------------------------

library(maptools)


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







# https://ec.europa.eu/eurostat/databrowser/view/migr_dubri/default/table?lang=en