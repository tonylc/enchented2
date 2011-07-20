/* LOVE FOR DESIGN
/* Navigation
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('nav a').pjax('#page > div', { success: function() {

            $('nav li.current a').unwrap();
            $('nav li.current').removeClass('current');
            $('nav a[href="' + window.location.pathname + '"]').wrap('<strong></strong>').parent().parent().addClass('current');

            groupWidgets();
            maps();
            rsvp();

        }});

    });