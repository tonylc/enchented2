/* Example - Forms
----------------------------------------------------------------------------- */


    $(window).load(function() {


        if (jQuery.fn.buttons) {

            $('ul.buttons li input').buttons();

        }
    
        if (jQuery.fn.locate) {

            $('form').locate();

        }

        if (jQuery.fn.pick) {

            $('label.date').pick();
    
        }

        if (jQuery.fn.validate) {

            $('label.address').validate('address');
            $('label.required').validate('required');

        }

    });