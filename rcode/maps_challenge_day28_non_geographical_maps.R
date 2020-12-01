# Non geographical maps
# Jan-Philipp Kolb
# Sun Nov 29 07:49:11 2020

# code from https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_pca.html

# pca

library(ggfortify)
df <- iris[1:4]
pca_res <- prcomp(df, scale. = TRUE)

autoplot(pca_res, data = iris, colour = 'Species')



png("maps/maps_challenge_day28_ngeomap.png")
autoplot(pca_res, data = iris, colour = 'Species',
         loadings = TRUE, loadings.colour = 'blue',
         loadings.label = TRUE, loadings.label.size = 3)
dev.off()


#30daymapchallenge day 28 a non geographical map. Here is the result of a principal component analysis on the iris dataset. I used the 
#rstats package ggfortify for this. Thanks to Masaaki Horikoshi, @TerryTangYuan, Austin Dickey and many more.


# https://stackoverflow.com/questions/47788171/display-non-geographical-maps-using-r-leaflet-shiny

# https://towardsdatascience.com/how-to-build-a-non-geographical-map-2-340256ad9f16




# https://towardsdatascience.com/how-to-build-a-non-geographical-map-1-8d3373e83d6c

# https://stackoverflow.com/questions/47788171/display-non-geographical-maps-using-r-leaflet-shiny

