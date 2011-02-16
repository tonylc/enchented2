/* Location
----------------------------------------------------------------------------- */


(function($) {

    $.fn.locate = function(options) {

        var defaults = {
        
            debug: false

        };

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            var $this = $(this);

            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function(position) {

                    var latitude = position.coords.latitude;
                    var longitude = position.coords.longitude;
                    var api = '/proxy?url=' + encodeURIComponent('http://maps.googleapis.com/maps/api/geocode/json?latlng=' + latitude + ',' + longitude + '&sensor=false');

                    $.getJSON(api, function(location) {

                        var city = location.results[0].address_components[2].short_name;
                        var state = location.results[0].address_components[5].short_name;

                        $this.find('label.city input').val(city);
                        $this.find('label.state option[value=' + state + ']').attr('selected','selected');

                    });
                
                });

            }


        });

    };

})(jQuery);