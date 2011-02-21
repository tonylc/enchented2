/* Initializer
----------------------------------------------------------------------------- */


(function($) {

    var methods = {
    
    players: function() {
    
        return this.each(function() {
        
            if ($(this).hasClass('youtube')) {
                $(this).play({ source: 'youtube' });
            } else if ($(this).hasClass('vimeo')) {
                $(this).play({ source: 'vimeo' });
            } else if ($(this).hasClass('grooveshark')) {
                $(this).play({ source: 'grooveshark' });
            }
        
        });
    
    },
    
    prompt: function() {

        return this.each(function() {

            var $widget = $(this);

            if ($widget.hasClass('video')) {
                $widget.find('textarea').clipboard();
            } else if ($widget.hasClass('song')) {
                $widget.search();
            }
            
            $widget.find('ul.actions li input').buttons();
            $widget.hide().fadeIn();

        });

    },
    
    playlist: function() {
    
        return this.each(function() {
        
            var $widget = $(this);
            var $playlist = $(this).find('ul.playlist');
            
            $('ul.actions a').click(function() {
            
                var song = $(this).parent().parent().closest('li').attr('id');

                $('div.player').play({ source: 'grooveshark', clip: song });

                if ($(this).parent().hasClass('add')) {
                    $widget.fadeOut(function() {
                        $(this).remove();                                        
                    });
                }

                return false;
            
            });            
        
        });
    
    }


/* Create jQuery plug-in
----------------------------------------------------------------------------- */


    };

    $.fn.initialize = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.prompt.apply(this, arguments);
        }

    };

})(jQuery);