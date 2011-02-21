/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('div.guide').hide();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        $('ul.buttons li input').buttons();
        $('div.player.video.youtube').play({ source: 'youtube' });
        $('div.player.video.vimeo').play({ source: 'vimeo' });
        $('div.player.song.grooveshark').play({ source: 'grooveshark' });
        $('li.play a').live('click', function() {
        
            $('div.player').addClass('song').removeAttr('id').play({ source: 'grooveshark', clip: + $(this).parent().parent().closest('li').attr('id') });
            return false;
        
        });

        $('div.guide').guide();

    });