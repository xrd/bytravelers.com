// Generated by CoffeeScript 1.6.3
var mod;

mod = angular.module('btMaps', []);

mod.directive('leafletMap', function() {
  var func;
  func = function(scope, element, attrs) {
    var center, id, lat, lng, map, zoom;
    id = attrs.mapId;
    center = attrs.latLng.split(",");
    lat = center[0];
    lng = center[1];
    zoom = center[2];
    if (zoom == null) {
      zoom || (zoom = 8);
    }
    console.log("Id: " + id);
    map = L.map(id, {
      center: [lat, lng],
      zoom: zoom
    });
    return L.tileLayer('http://{s}.tile.cloudmade.com/53597050e7e542b69d87de7597ce6eac/997/256/{z}/{x}/{y}.png', {
      attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
      maxZoom: 18
    }).addTo(map);
  };
  return func;
});

angular.module('bt', ['btMaps']);