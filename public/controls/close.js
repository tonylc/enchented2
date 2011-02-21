/* Close Button
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('div.widget:not(.form), div.player').append('<a class="close" href="#">Close</a>');
        $('div.widget a.close').live('click', function() {
        
            var $widget = $(this).parent();
            var action = true;
            var content = $(this).closest('div.widget').children('h3').text().split(/\s/).pop();
            
            action = confirm("Are you sure you want to delete this " + content.toLowerCase() + "?");
            
            if (action == true) {
            
                $widget.fadeOut(function() {
                
                    $widget.unwrap('form').remove();
                
                });
            
            }
            
            return false;
        
        });
        
    });