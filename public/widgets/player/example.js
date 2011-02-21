/* Example - Player
----------------------------------------------------------------------------- */


    $(window).load(function() {

        if (jQuery.fn.play) {

            $('div.player.video.youtube').play({ source: 'youtube' });
            $('div.player.video.vimeo').play({ source: 'vimeo' });
            $('div.player.song.grooveshark').play({ source: 'grooveshark' });

        }

    });