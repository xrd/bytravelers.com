mod = angular.module( 'btMaps', [] )

mod.directive 'leafletMap', () ->
        func = (scope, element, attrs ) ->
                id = attrs.mapId
                center = attrs.latLng.split( "," )
                lat = center[0]
                lng = center[1]
                zoom = center[2]
                zoom ||= 8 if not zoom? or zoom == ""
                console.log "Id: #{id}"
                map = L.map id,
                        center: [ lat, lng ]
                        zoom: zoom
                L.tileLayer('http://{s}.tile.cloudmade.com/53597050e7e542b69d87de7597ce6eac/997/256/{z}/{x}/{y}.png', {
                        attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://cloudmade.com">CloudMade</a>',
                        maxZoom: 18
                        }).addTo(map)
        func

angular.module( 'bt', ['btMaps'] )
