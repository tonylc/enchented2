/* LOVE FOR DESIGN
/* RSVP
----------------------------------------------------------------------------- */
/* Page Load */


    $(window).load(function() {
    
        function toggleGroups() {

            $(this).parent().parent().find('input').each(function() {

                var group = '#' + $(this).attr('id') + '-' + $(this).val();
		
                if ($(this).hasClass('toggle') && $(this).is(':checked')) {
                    $(group).slideDown('slow');
                } else {
                    $(group).slideUp();                
                }
            
            });

        }
        
        $('fieldset input').each(toggleGroups);
        $('fieldset input').change(toggleGroups);

    });