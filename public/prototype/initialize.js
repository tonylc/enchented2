/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('div#wedding h2').measure();
        $('div.guide').hide();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('ul.buttons li input').buttons();
        $('div.guide').guide(function() {

            $('div.player').initialize('players');
        
        });
 
    });