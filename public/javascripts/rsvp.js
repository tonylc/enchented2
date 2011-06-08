/* LOVE FOR DESIGN
/* RSVP Widget
----------------------------------------------------------------------------- */


    $(window).load(function() {

        function toggleOptional(event) {

            if ($(this).val().length > 0 || event.type == 'focus') {
                $(this).prev().addClass('focused');
            } else {
                $(this).prev().removeClass('focused');
            }

        }

        $('label.optional').next().focus(toggleOptional);
        $('label.optional').next().blur(toggleOptional);

        // RSVP details toggling

        function toggleDetails() {

            if ($(this).parent().children('input:checked').val() == 'true') {
                $(this).parent().siblings('section').slideDown('slow');
            } else {
                $(this).parent().siblings('section').slideUp();
            }

        }

        $('fieldset.rsvp input').each(toggleDetails);
        $('fieldset.rsvp input').change(toggleDetails);

    });