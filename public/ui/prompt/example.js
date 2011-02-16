/* Example - Prompts
----------------------------------------------------------------------------- */


    $(window).load(function() {


        if (jQuery.fn.clipboard) {

            $('div.clipboard textarea').clipboard();

        }
        
        if (jQuery.fn.search) {

            $('div.prompt.search').search();

        }

    });