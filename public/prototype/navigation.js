/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('#navigation li.customize a').click(function() {

            $(this).fadeOut('fast');        
            $('#customizer').customize('open');
       
        });

    });