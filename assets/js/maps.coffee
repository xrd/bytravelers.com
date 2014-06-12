mod = angular.module( 'btMaps', [] )

mod.directive 'leafletMap', () ->
        func = (scope, element, attrs ) ->
                id = attrs.mapId
                center = attrs.latLng.split( "," )
                lat = center[0]
                lng = center[1]
                zoom = center[2]
                zoom ||= 8 if not zoom? or zoom == ""
                L.mapbox.map( id, 'examples.map-i86nkdio').setView([ lat, lng ], zoom);
        func

angular.module( 'bt', ['btMaps'] )
