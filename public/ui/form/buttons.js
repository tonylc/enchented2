/* Buttons
----------------------------------------------------------------------------- */


(function($) {

    $.fn.buttons = function(options) {

        return this.each(function(index) {
    
            if ($(this).attr('type') == 'submit') {
            
                $('<a href="#">' + $(this).val() + '</a>').insertAfter($(this));
                
                $(this).siblings('a').click(function() {
                
                    $('label.required').validate();
                    $(this).closest('form.validated').submit();
                    return false;
                
                });

                $(this).remove();
            
            }
    
        });

    };

})(jQuery);