/* LOVE FOR DESIGN
/* Widget Groups
----------------------------------------------------------------------------- */


    function groupWidgets() {

        $('section.accordion').children('div').each(function() {
            $(this).css('height', $(this).outerHeight() );
        });
        $('section.accordion').accordion({ header: 'h2', autoHeight: false });
        $('section.tabbed').tabs();

    }

    $(window).load(function() {

        groupWidgets();

    });