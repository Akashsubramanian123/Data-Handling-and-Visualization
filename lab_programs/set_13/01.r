library(leaflet)

cities <- data.frame(
  City = c("City A", "City B", "City C"),
  lat = c(37.77, 34.05, 40.71),
  lng = c(-122.41, -118.24, -74.00)
)

leaflet(cities) %>% addTiles() %>% addMarkers(~lng, ~lat, popup = ~City)