/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('div#content').children('*').hide();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('ul.actions li input').buttons();

        function initialize() {

            $('div#content').children('.widget').each(function() {
            
                var widget = $(this).attr('class').split(/\s/);
                    widget = widget[1];
                    
                $(this).initialize(widget);
            
            });
        
            $('div#customizer').customize('init');
     
        }

    // When guides are displayed a callback is used to pace widget initialization

        if ($('div.guide').length > 0) {
            $('div.guide').guide(initialize);
        } else {
            initialize();
        }
 
    });