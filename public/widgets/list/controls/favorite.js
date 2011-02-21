/* Favorite Control
----------------------------------------------------------------------------- */


(function($) {

    $.fn.favorite = function(options) {

        var defaults = {
        
            debug: false
    
        };
    
        var options = $.extend(defaults, options);
        
        return this.each(function(index) {
    
            var $item = $(this);
            var $toggle = $item.find('label.favorite');
    
            function toggleFavorite() {
    
                if ($toggle.children('input').attr('checked') == true) {
                    $toggle.addClass('favorited');
                    alert('favorite: ' + $item.attr('id'));
                } else {
                    $toggle.removeClass('favorited');
                }
    
            }
            
            toggleFavorite();
            $toggle.click(toggleFavorite);
    
        });

    };

})(jQuery);