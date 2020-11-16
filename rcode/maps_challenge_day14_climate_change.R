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


one <- trimws(unlist(lapply(datus2,function(x)x[1])))


# Match the data ----------------------------------------------------------
ind <- match(dat$State,two)


dat$State[is.na(ind)]
dat$state <- tolower(one[ind])

data(df_pop_state)

df_climate <- data.frame(region=dat$state,value=dat$D4)

df_climate <- df_climate[-which(is.na(ind)),]


state_choropleth(df_climate,
                 title  = "US 2012 State Population Estimates",
                 legend = "Population")

state_choropleth(df_climate,
                 legend     = "Exceptional Drought",
                 num_colors = 1)



# Contribution 14 for #30daymapchallenge. A map for exceptional drought in Novemer 2020. I have the data from droughtmonitor.unl.edu/. I used the #rstats/#rspatial package chroplethr. Thanks to @AriLamstein and others. 

# Links -------------------------------------------------------------------

# https://www.iberdrola.com/environment/top-countries-most-affected-by-climate-change

# https://stat.ethz.ch/R-manual/R-devel/library/base/html/trimws.html

# https://stackoverflow.com/questions/24741541/split-a-string-by-any-number-of-spaces

# https://www.worldatlas.com/aatlas/usacodes.htm

# Data Draught Monitor
# https://droughtmonitor.unl.edu/Data/GISData.aspx

# https://www.nature.com/npjurbansustain/about/editors-perspective-world-cities-day?utm_source=bing&utm_medium=cpc&utm_campaign=NPJS_1_AK02_GL_URBANSUSTAIN_AWA_WorldCities2020&utm_term=climate%20change&utm_content=NPJ_URBANSUSTAIN_WorldCities2020_2

# https://www.eea.europa.eu/signals/signals-2019-content-list/articles/soil-land-and-climate-change

# https://stackoverflow.com/questions/46014887/how-to-split-letters-with-bracket-and-numbers-in-r

# https://stackoverflow.com/questions/35347537/using-strsplit-in-r-ignoring-anything-in-parentheses

# https://arilamstein.com/documentation/choroplethr/reference/state_choropleth.html

# https://www.climate.gov/maps-data/datasets/formats/csv

# https://www.climate.gov/maps-data/dataset/weekly-drought-map