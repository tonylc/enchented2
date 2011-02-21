/* Measurer Utility
----------------------------------------------------------------------------- */


(function($) {

    $.fn.measure = function(options) {
    
        return this.each(function(index) {

            $(this).css('width', $(this).width() + 'px').css('float', 'none').css('visibility','visible');

        });

    };

})(jQuery);