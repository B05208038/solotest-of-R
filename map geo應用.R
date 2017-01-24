install.packages("leaflet")
library(leaflet)
hello_map <- leaflet() %>%
  addTiles() %>%
  addMarkers(lng = 121.539366, lat = 25.017326, popup = "National Taiwan University")
hello_map

#
#-----------------------------------------------------
#let's make a map of yours!
hello_map  <- leaflet() %>% 
  setView(lat = 51.505 ,lng = -0.09, zoom = 18 ) %>% 
  addTiles()
hello_map 
#-----------------------------------------------------
#改變圖層
hello_map  <- leaflet() %>% 
  setView(lat = 51.505 ,lng = -0.09, zoom = 18 ) %>% 
  addTiles()
hello_map 
#---------------------------------------------------
#地圖實作
provider_map <- leaflet() %>%
  setView(lng = 121.539366, lat = 25.017326, zoom = 10) %>%
  addProviderTiles("Thunderforest.OpenCycleMap")
provider_map
#------------------------------------------------
#多塗層疊加
combined_map <- leaflet() %>%
  setView(lng = 121.539366, lat = 25.017326, zoom = 10) %>%
  addProviderTiles("Stamen.TonerLite") %>%
  addProviderTiles("Thunderforest.OpenCycleMap",
                   options = providerTileOptions(opacity = 0.3))
combined_map
#opacity:透明度
#------------------711---------------------------------
stores <- read.csv("https://storage.googleapis.com/r_rookies/stores711inTP.csv")
markers_711 <- leaflet(data = stores) %>%
  addTiles() %>%
  addMarkers(~lng, ~lat, popup = ~as.character(popups1))
markers_711
#--------------加個商標?--------------------------------
markers_711 <- leaflet(data = stores) %>%
  addTiles() %>%
  addMarkers(~lng, ~lat, popup = ~as.character(popups1), icon = list(iconUrl = "https://storage.googleapis.com/r_rookies/711_logo.gif", iconSize = c(20, 20)))
markers_711
#----------------------clusterOptions------------------
markers_711 <- leaflet(data = stores) %>%
  addTiles() %>%
  addMarkers(~lng, ~lat, popup = ~as.character(popups1), icon = list(iconUrl = "https://storage.googleapis.com/r_rookies/711_logo.gif", iconSize = c(20, 20)), clusterOptions = markerClusterOptions())
markers_711