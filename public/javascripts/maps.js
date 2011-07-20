/* LOVE FOR DESIGN
/* Maps
----------------------------------------------------------------------------- */


    function maps() {

        $('ol.places').each(function() {

            $('<div id="map-' + Date.parse(new Date()) + '" class="map"></div>').insertBefore($(this));

        });

        function mapPlaces() {

            if ($(this).prev().hasClass('mapped')) {
                return false;
            }

            var places = new Array();

            $(this).children('li').each(function(index) {

                var latitude = parseFloat($(this).children('.geo').children('.latitude').text());
                var longitude = parseFloat($(this).children('.geo').children('.longitude').text());

                places[index] = new Array(latitude, longitude);

            });

            var start = new google.maps.LatLng(places[0][0], places[0][1]);
            var $map = $(this).prev('div.map');
            var map = new google.maps.Map($map[0], {

                center: start,
                zoom: 13,
                scrollwheel: false,
                mapTypeId: google.maps.MapTypeId.TERRAIN,
                mapTypeControlOptions: {
                    style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
                }

            });

            if (places.length > 1) {

                var directions = new google.maps.DirectionsService();
                var directionsMap;
                var end = new google.maps.LatLng(places[places.length - 1][0], places[places.length - 1][1]);
                var to = {
                    origin: start,
                    destination: end,
                    travelMode: google.maps.DirectionsTravelMode.DRIVING
                }

                directionsMap = new google.maps.DirectionsRenderer();
                directionsMap.setMap(map);
                directions.route(to, function(response, status) {
                    if (status == google.maps.DirectionsStatus.OK) {
                        directionsMap.setDirections(response);
                    }
                });

            } else {

                var marker = new google.maps.Marker({
                    position: start,
                    map: map
                });

            }

            $map.addClass('mapped').css('visibility','visible');

        }

        $('section.accordion').bind('accordioncreate', function(event, ui) {

            $(this).find('div.ui-accordion-content-active ol.places').each(mapPlaces);

        });
        $('section.accordion').bind('accordionchange', function(event, ui) {

            $(ui.newContent).children('ol.places').each(mapPlaces);

        });
        $('section.tabbed > ul + div ol.places').each(mapPlaces);
        $('section.tabbed').bind('tabsshow', function(event, ui) {

            $('#' + ui.panel.id).children('ol.places').each(mapPlaces);

        });

    }

    $(window).load(maps);