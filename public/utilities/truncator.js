/* Truncator Utility
----------------------------------------------------------------------------- */


(function($) {

    $.fn.truncate = function(options) {
    
        var defaults = {
        
            debug: false,
            characters: 18

        };

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            var $text = $(this);
            var maximum = defaults.characters;
            var characters = $text.text().length;
            var difference = (characters - maximum) * -1;
        
            if (characters > maximum) {
                $text.attr('title', $text.text());
                $text.html($text.text().slice(0, difference) + '&hellip;');
            }

        });

    };

})(jQuery);