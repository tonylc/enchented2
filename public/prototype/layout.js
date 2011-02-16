/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('div#wedding h2').center();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('div.widget > h3').addClass('move');

        $('body.new div#content').sortable({

            items: 'div.widget',
            handle: 'h3.move',
            forceHelperSize: true

        });
        
        $('body.new div.widget').append('<a class="close" href="#">Close</a>');
    
    });