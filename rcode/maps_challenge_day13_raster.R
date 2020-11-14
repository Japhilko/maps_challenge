# Create a raster map
# Jan-Philipp Kolb
# Fri Oct 23 13:20:07 2020


setwd("C:/Users/X230/Downloads/NE1_50M_SR_W/NE1_50M_SR_W/")

dat <- raster::stack("NE1_50M_SR_W.tif")


sp::spplot(dat,"NE1_50M_SR_W.1")

# https://www.naturalearthdata.com/downloads/50m-natural-earth-1/50m-natural-earth-i-with-shaded-relief-and-water/

# My contribution for day 13 of the #30daymapchallenge. A raster map of satellite-derived land cover data and shaded relief. I used data from naturalearthdata.com and the #rstats package spmap.



# Sorry, I made a mistake. I used of course the #rstats package sp and the function spplot. Thanks to @edzerpebesma, @RogerBivand, @geospacedman, @precariobecario, @mdsumner, @FinnLindgren and others





# Another example ---------------------------------------------------------

# https://gis.stackexchange.com/questions/280966/extracting-exact-land-coverage-raster-from-tiff-format-raster-using-r

url = "https://cidportal.jrc.ec.europa.eu/ftp/jrc-opendata/LUISA/PrimaryOutput/Europe/REF-2014/JRC_LUISA_Input_Corine_land_cover_2006_r_ref_2014.zip"
download.file(url, basename(url))
unzip(basename(url))    # got some problem to unzip the file in R; better to use decompress the file in local site
tifDat <- list.files(getwd(), "tif$")     # tif file was located in two nested folder
land_cover = raster::stack(tifDat[1])

plot(land_cover)

# https://codeyarns.files.wordpress.com/2011/07/20110729-vim-named-colors.png?w=700


#100daysOfCode
