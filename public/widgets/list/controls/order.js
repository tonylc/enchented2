/* Order Control
----------------------------------------------------------------------------- */


(function($) {

    var methods = {

    
    // Applies jQuery UI sortable plug-in against selected list

        init: function(options) {

            var defaults = {
            
                debug: false
    
            };
    
            var options = $.extend(defaults, options);
    
            return this.each(function(index) {
                
                $(this).addClass('order').sortable({
                
                    cursor: 'crosshair',
                    items: '> li',
                    forcePlaceholderSize: true,
                    forceHelperSize: false,
                    tolerance: 'pointer',
                    update: function() {
                        $(this).order('save');                    
                    }
            
                });
    
            });
    
        
        },


    // Method to record list ordering by passing indexes into form inputs
        
        save: function() {
        
            return this.each(function(index) {
        
                $(this).children('li').each(function(index) {
                    $(this).children('label.order').children('input').val(index);
                });

            });

        }
    
    };

    $.fn.order = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        }

    };

})(jQuery);