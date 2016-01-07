if $("#map").length > 0
  window.setupMap = (lat,  long, zoom) ->
    window.Map = L.map('map').setView([
      lat
      long
    ], zoom)
    L.tileLayer('http://osm.karaniwan.org/{z}/{x}/{y}.png',
      maxZoom: 18
      attribution: 'Map &copy; <a href="http://openstreetmap.org">OpenStreetMap contributors</a>'
    ).addTo window.Map
