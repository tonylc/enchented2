/* LOVE FOR DESIGN
/* RSVP
----------------------------------------------------------------------------- */


    $(document).ready(function() {

        $('menu input').each(function() {
        
            $(this).hide();
            $('<a href="#">' + $(this).val() + '</a>').insertAfter($(this)).click(function() {
            
                $(this).closest('form').submit();
                return false;
            
            });
        
        });

    });


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