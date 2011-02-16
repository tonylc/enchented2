/* Input Method - Search
----------------------------------------------------------------------------- */


(function($) {

    $.fn.search = function(options) {
    
        var defaults = {
        
            debug: false

        };

        var options = $.extend(defaults, options);

        return this.each(function(index) {

            var $this = $(this);
            var $form = $this.parent('form');
            var $input = $this.find('input[type=text]');
            var $results = $this.children('ul.results');
            var $result = $results.children('li').hide();

            $form.submit(function() {
            
                var query = $input.val();
    
                if ($this.hasClass('song')) {

                    $results.empty().addClass('playlist');
                    adapter.grooveshark('search', query, function(songs) {
                    
                        $.each(songs, function(index, song) {
                        
                            var $song = $result.clone().appendTo($results).fadeIn();
                            
                            $song.attr('id', song['id']).addClass('grooveshark');
                            $song.find('h4').text(song['title']);
                            $song.find('em').text(song['artist']);

                        });
                    
                    });
                
                }
                
                return false;
            
            });

        });

    };

})(jQuery);