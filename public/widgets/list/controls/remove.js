/* Remove Control
----------------------------------------------------------------------------- */


(function($) {

    $.fn.remove = function(options) {

        var defaults = {
        
            debug: false
    
        };
    
        var options = $.extend(defaults, options);
        
        return this.each(function(index) {

            $(this).click(function() {


        // Determine item to be deleted's name and parent element

                if ($(this).parent().parent().parent().is('li')) {
    
                    var $item = $(this).parent().parent().parent();

                } else if ($(this).parent().parent().parent().parent().is('li')) {
    
                    var $item = $(this).parent().parent().parent().parent();

                } else if ($(this).parent().parent().is('tr')) {
    
                    var $table = $(this).closest('table');        
                    var $item = $(this).parent().parent();

                }

                if ($item.find('h4').attr('title')) {
                    var name = $item.find('h4').attr('title');
                } else if ($item.find('h4')) {
                    var name = $item.find('h4').text();
                } else {
                    var name = $('h2').text();
                }


        // Confirm deletion
        
                if (confirm('Are you sure you want to remove ' + name + '?') == false) {
                    return false;
                }


        // Remove item and signal removal differently depending on contexdt 

                if ($item) {
    
                    var $tab = $('ul.tabs a[href=#' + target +']').parent();
                    var $insertion = $('#' + target).children('ul.' + $item.parent().attr('class'));
    
                    $item.fadeOut(function() {
        
                        if (target == 'permanent') {
        
                            $item.remove();
        
                        } else {
    
                            $tab.fadeOut('fast').fadeIn('fast');
                            $item.appendTo($insertion).show();
                            $link.parent().remove();
        
                        }
                        
                    });
    
                } else if ($row) {
    
                    $row.fadeOut(function() {
    
                        if ($table.children('tbody').children('tr').length == 1) {
                            $table.remove();
                        }
    
                        $row.remove();
                    
                    });
        
                } else {
                
                    $(this).closest('form').submit();
                
                }
                
                return false;
            
            });
    
        });

    };

})(jQuery);