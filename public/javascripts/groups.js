/* LOVE FOR DESIGN
/* Widget Groups
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('section.accordion').children('div').each(function() {
            $(this).css('height', $(this).outerHeight() );
        });
        $('section.accordion').accordion({ header: 'h2', autoHeight: false });
        $('section.tabbed').tabs();

    });