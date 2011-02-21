/* Date Picker
----------------------------------------------------------------------------- */


(function($) {

    $.fn.pick = function(options) {

        var defaults = {
        
            debug: false

        };

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            if ($(this)[0].tagName.toLowerCase() == 'input') {
                var $picker = $(this);
            } else {
                var $picker = $(this).children('input');
            }

            function setDate() {
            
                $picker.addClass('set');
            
            }

            $picker.datepicker({
        
                autoSize: 1,
                dateFormat: 'DD, MM d, yy',
                yearRange: '-1:+5',
                monthNamesShort: ['January','February','March','April','May','June','July','August','September','October','November','December'],
                dayNamesMin: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
                showOtherMonths: true,
                changeMonth: true,
                changeYear: true,
                showOn: 'button',
                showAnim: 'fadeIn',
                onSelect: setDate
        
            });

            $(this).click(function() {

                $picker.datepicker('show');
            
            });

        });

    };

})(jQuery);