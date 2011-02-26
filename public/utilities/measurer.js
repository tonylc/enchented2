/* Measurer Utility
----------------------------------------------------------------------------- */


(function($) {

    $.fn.measure = function(options) {
    
        return this.each(function(index) {

            var $this = $(this);

            setTimeout(function() {
                $this.css('width', $this.width() + 'px').css('float', 'none').hide().css('visibility','visible').fadeIn();
            }, 500);

        });

    };

})(jQuery);