# Climate change
# 14.11.2020
# Jan-Philipp Kolb

# install.packages("climate")
install.packages("choroplethr")

library(climate)
library(sp)
library(choroplethr)

# list of countries most affected by climate change

main_path <- "C:/Arbeit/geoscience/data/USDM_current_M/"
data_path <- "C:/Arbeit/geoscience/data/"



# Get the data ------------------------------------------------------------


mdat <- rgdal::readOGR(paste0(main_path,"USDM_20201110.shp"))
dat <- read.csv(paste0(data_path,"dm_export_state_2020-11-10.csv"))

# get the us states abbreviations

# datus <- as.vector(readxl::read_excel(paste0(data_path,"us_states_list.xls")))
datus <- rio::import(paste0(data_path,"us_states_list.xls"))
datus <- as.character(datus)

datus2 <- strsplit(datus$States,"[(]")
two <- unlist(lapply(datus2,function(x)x[2]))
two <- gsub(")","",two)


one <- unlist(lapply(datus2,function(x)x[1]))
data(df_pop_state)

spplot(mdat)


# Links -------------------------------------------------------------------

# https://www.iberdrola.com/environment/top-countries-most-affected-by-climate-change

