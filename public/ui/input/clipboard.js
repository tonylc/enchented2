/* Input Method - Clipboard
----------------------------------------------------------------------------- */


(function($) {

    $.fn.clipboard = function(options) {
    
        var defaults = {
        
            debug: false,
            preview: true

        };

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            var $clipboard = $(this);
            var $prompt = $clipboard.closest('div').find('.prompt');
            var $preview = $prompt.siblings('div.preview');

            function focus() {
            
                $prompt.addClass('focused');
                $clipboard.focus();

            }

            $prompt.each(focus);
            $prompt.click(focus);
            $clipboard.keyup(inspect);
            $clipboard.blur(function() {

                $prompt.removeClass('focused');
                $clipboard.val('');
            
            });

            function inspect() {
            
                var input = $(this).val();
    
                if (input.match('youtube')) {

                    $preview.play({ source: 'youtube', clip: adapter.youtube(input) });

                } else if (input.match('vimeo')) {

                    $preview.play({ source: 'vimeo', clip: adapter.vimeo(input) });

                }
        
            }

        });

    };

})(jQuery);