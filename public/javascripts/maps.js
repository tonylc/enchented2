/* LOVE FOR DESIGN
/* Maps
----------------------------------------------------------------------------- */


    $(window).load(function() {

        function mapLocation() {

            if ($(this).hasClass('mapped') || $(this).prev().hasClass('mapped')) {
                return false;
            }

            if ($(this).children('ul').length > 0) {
                var latitude1 = parseFloat($(this).children('ul').children('li:first-child').children('.latitude').text());
                var longitude1 = parseFloat($(this).children('ul').children('li:first-child').children('.longitude').text());
                var latitude2 = parseFloat($(this).children('ul').children('li:last-child').children('.latitude').text());
                var longitude2 = parseFloat($(this).children('ul').children('li:last-child').children('.longitude').text());
                var directions = new google.maps.DirectionsService();
                var directionsMap;
                var location = new google.maps.LatLng(latitude1, longitude1);
                var end = new google.maps.LatLng(latitude2, longitude2);
            } else {
                var latitude = parseFloat($(this).children('.latitude').text());
                var longitude = parseFloat($(this).children('.longitude').text());
                var location = new google.maps.LatLng(latitude, longitude);
            }

            var random = Date.parse(new Date());
            var options = {

                center: location,
                zoom: 13,
                scrollwheel: false,
                mapTypeId: google.maps.MapTypeId.TERRAIN,
                mapTypeControlOptions: {
                    style: google.maps.MapTypeControlStyle.DROPDOWN_MENU
                }

            }

            if ($(this).hasClass('map')) {
                var map = new google.maps.Map($(this)[0], options);
            } else {
                $('<div id="map-' + random + '" class="map mapped"></div>').insertBefore($(this));
                var map = new google.maps.Map($(this).parent().children('.map')[0], options);
            }

            if (directions) {
                var to = {
                    origin: location,
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
                    position: location,
                    map: map
                });
            }

            $(this).addClass('mapped');

        }

        $('div.tabbed div:not(.ui-tabs-hide) .location, div.tabbed div:not(.ui-tabs-hide) .map').each(mapLocation);
        $('.tabbed').bind('tabsshow', function(event, ui) {

            var $this = $('#' + ui.panel.id);

            if ($this.children('.map').length > 0) {
                $this.children('.map').each(mapLocation);
            } else {
                $this.children('.location').each(mapLocation);
            }

        });

    });