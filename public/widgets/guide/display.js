/* Guides
----------------------------------------------------------------------------- */


(function($) {

    $.fn.guide = function(callback) {

        return this.each(function(index) {

            var $guide = $(this);

            // Add close button

            $guide.toggle('slide', 'normal', function() {

                setTimeout(function() {
                    $guide.append('<a class="close" href="#">Close</a>').children('a.close').hide().fadeIn(1000).click(function() {
                    
                        $(this).hide();
                        $guide.children('*').fadeOut('fast');
                        $guide.slideUp(function() {
                        
                            $guide.remove();
                        
                        });
                        
                        return false;
                    
                    });
                }, 1000);
                
                if ($.isFunction(callback)) {
                    callback.call(this);
                }
                
            });

        });

    };

})(jQuery);