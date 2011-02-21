/* Order Control
----------------------------------------------------------------------------- */


(function($) {

    var methods = {


    // Validates http web urls

        address: function(options) {

            return this.each(function() {

                var valid = new RegExp();
                valid.compile('^[A-Za-z]+://[A-Za-z0-9-_]+\\.[A-Za-z0-9-_%&\?\/.=]+$');
                
                if ($(this)[0].tagName.toLowerCase() == 'input') {
                    var $input = $(this);
                } else {
                    var $input = $(this).children('input');
                }
                
                var $form = $input.closest('form');
                
                $input.blur(function() {
                
                    var url = $(this).val();
    
                    if (url.slice(0,7) != "http://" && url.slice(0,8) != "https://") {
                        $input.val('http://' + url);
                    }
                    
                    if (valid.test(url) == true) {
                        $input.parent().removeClass('error');
                        $form.addClass('validated');
                    } else {
                        $input.parent().addClass('error');
                        $form.removeClass('validated');
                    }

                });
    
            });
        
        },


    // Validates required data

        required: function(options) {
        
            return this.each(function() {
            
                if ($(this)[0].tagName.toLowerCase() == 'input') {
                    var $input = $(this);
                } else {
                    var $input = $(this).children('input');
                }
                
                var $form = $input.closest('form');
                
                if ($input.val() && $input.val().length > 0) {
                    $input.parent().removeClass('error');
                    $form.addClass('validated');
                } else {
                    $input.parent().addClass('error');
                    $form.removeClass('validated');
                }
            
            });
        
        }
        
    };


    $.fn.validate = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.required.apply(this, arguments);
        }

    };

})(jQuery);