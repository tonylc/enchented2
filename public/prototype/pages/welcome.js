/* DOM Ready
----------------------------------------------------------------------------- */


    $(document).ready(function() {
    
        $('div.guide').hide();
    
    });


/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        if ($('body').hasClass('new')) {
            $('div.clipboard textarea').clipboard();
            $('div.prompt.search').search();
            $('div.editor.text').edit();
            $('ul.buttons li input').buttons();
        }

        $('div.player.video.youtube').play({ source: 'youtube' });
        $('div.player.video.vimeo').play({ source: 'vimeo' });
        $('div.player.song.grooveshark').play({ source: 'grooveshark' });
        $('li.play a').live('click', function() {
        
            $('div.player').removeAttr('id').play({ song: + $(this).parent().parent().closest('li').attr('id') });
        
            return false;
        
        });

        $('div.guide').guide();

    });