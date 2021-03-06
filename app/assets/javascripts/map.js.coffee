if $("#map").length > 0
  window.setupMap = (lat, long, zoom) ->
    window.Map = L.map('map').setView([
      lat
      long
    ], zoom)
    L.tileLayer('https://osm.karaniwan.org/{z}/{x}/{y}.png',
      maxZoom: 18
      minZoom: 2
      attribution: 'Map &copy; <a href="http://openstreetmap.org">OpenStreetMap contributors</a>'
    ).addTo window.Map
