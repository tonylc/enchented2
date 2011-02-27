/* Music/Video Player (YouTube, Vimeo, Grooveshark)
----------------------------------------------------------------------------- */


(function($) {

    $.fn.play = function(options) {
    
        var defaults = {
        
            debug: false,
            autoplay: true

        };
        
        if (defaults.autoplay == true && !window.location.search.match('mute')) {
            defaults.autoplay = 1;
        } else {
            defaults.autoplay = 0;
        }
        
        var options = $.extend(defaults, options);

        return this.each(function(index) {

            if (options.clip == undefined) {
                options.clip = $(this).attr('id');
            }

            if ($(this).hasClass('player') && $(this).children('div').length > 0) {
                var $player = $(this).children('div');
            } else {
                $(this).append('<div></div>').hide();
                var $player = $(this).children('div');
            }

            var $title = $player.siblings('h4:not(.prompt)');
            var $details = $(this).siblings('h4:not(.prompt)').next('em');

            if (options.source == 'grooveshark') {
                $(this).removeClass('video').addClass('song');
            } else {
                $(this).removeClass('song').addClass('video');
            }

        // YouTube Player

            if (options.source == 'youtube') {
            
                adapter.youtube(options.clip, function(video) {
                    
                    $player.parent().show();
                    $player.show().empty().append('<div id="player-' + video.id +'"></div>');
                    swfobject.embedSWF(video.player, 'player-' + video.id, '100%', '100%', '9.0.0', '/ui/expressInstall.swf', {
            
                        allowScriptAccess: 'always',
                        allowFullScreen: 'true',
                        autoplay: options.autoplay,
                        hd: 1,
                        showinfo: 0,
                        fs: 1
            
                    });
                    
                    if ($title) {
                        $title.text(video.title);
                    }
                
                });


        // Vimeo Player

            } else if (options.source == 'vimeo') {

                adapter.vimeo(options.clip, function(video) {
                    
                    $player.parent().show();
                    $player.show().empty().append('<iframe id="player-' + video.id +'" src="' + video.player + '?title=0&byline=0&portrait=0&autoplay=' + options.autoplay + '"></iframe>');
                    
                    if ($title) {
                        $title.text(video.title);
                    }
                
                });


        // Grooveshark Player            
            
            } else if (options.source == 'grooveshark') {

               if (options.autoplay == true) {
                    options.autoplay = 1;
               };

               $player.parent().show();
               $player.show().empty().append('<div id="player-' + options.clip +'"></div>');
               swfobject.embedSWF("http://listen.grooveshark.com/songWidget.swf", 'player-' + options.clip, "100%", "40", "9.0.0", "../flash/expressInstall.swf", {
               
                   hostname: 'cowbell.grooveshark.com',
                   songIDs: options.clip,
                   style: 'metal',    bbg: '000000', bfg: '666666', bt: 'FFFFFF', bth: '000000', pbg: 'FFFFFF', pbgh: '666666', pfg: '000000', pfgh: 'FFFFFF', si: 'FFFFFF', lbg: 'FFFFFF', lbgh: '666666',    lfg: '000000', lfgh: 'FFFFFF',    sb: 'FFFFFF', sbh: '666666',
                   p: options.autoplay
               
               });            
        
            }


        });

    };

})(jQuery);