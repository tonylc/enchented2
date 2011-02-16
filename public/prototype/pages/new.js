/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('label.season, label.season + br').hide();
        $('div.location').hide();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('ul.buttons li input').buttons();
        $('label.date').pick().siblings('fieldset').find('input').change(function() {
        
            if ($(this).attr('checked') == true) {
                $('label.date input').attr('disabled','disabled').parent().addClass('disabled');
                $('label.season, label.season + br').fadeIn();
                $(this).parent().removeClass('alternate');
            } else {
                $('label.date input').removeAttr('disabled').parent().removeClass('disabled');
                $('label.season, label.season + br').hide();
                $(this).parent().addClass('alternate');
            }

        });

    // Toggles location fields once a timeframe is set for better timing of geolocation permission

        function toggleLocation() {
        
            setTimeout(function() {
            
                if (!$('label.city input').val().length > 0) {
                    $('div.location').fadeIn().locate();
                }
        
            }, 800);
        
        }

        $('label.date + fieldset input').change(toggleLocation);
        $('label.date input').blur(toggleLocation);

    });