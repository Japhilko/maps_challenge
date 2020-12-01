# 30 day map challenge
# Jan-Philipp Kolb
#  25.11.2020
# Day 25 - population




# Load packages -----------------------------------------------------------


# install.packages("COVID19")


library(COVID19)
library(maptools)
library(sp)
library(leaflet)


# Get data ----------------------------------------------------------------



data("wrld_simpl")

x <- covid19()

x_afg <- x[x$id=="AFG",]
x_nov <- x[x$date=="2020-11-24",]

ind <- match(wrld_simpl$ISO3,x_nov$id)
wrld_simpl$covid_cases <- x_nov$confirmed[ind]
wrld_simpl$pop <- x_nov$population[ind]

wrld_simpl$cases_pop <-wrld_simpl$covid_cases/wrld_simpl$pop
qtm(wrld_simpl,"covid_cases")


png("maps/maps_challenge_day25_covid19.png")
qtm(wrld_simpl,"cases_pop")
dev.off()



spplot(wrld_simpl,"cases_pop")

x <- covid19(c("Italy"), level = 3)

#30daymapchallenge day 25 - covid19 map for the 24. November 2020 - cases per population. The data is from the great covid19datahub.io/. I used the #rstats packages COVID19, maptools ans sp. Thanks to Emanuele Guidotti, David Ardia and many more. 

save(x,file="C:/Arbeit/geoscience/data/covid19_italy.Rdata")

# https://covid19datahub.io/

?leaflet::leaflet
