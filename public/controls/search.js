/* Initializer
----------------------------------------------------------------------------- */


(function($) {

    var methods = {
    
    songs: function() {

        return this.each(function() {

            var $widget = $(this);
            var $input = $widget.find('input[type=text]');
            var $results = $widget.find('ul.results');

            $widget.submit(function() {
            
                var query = $input.val();

                adapter.grooveshark('search', query, function(songs) {
                    $results.empty().append('/widgets/prompt/_playlist.ejs', songs);
                    $widget.children('ul.actions');
                    $widget.initialize('playlist');
                });

                return false;
            
            });

        });

    }


/* Create jQuery plug-in
----------------------------------------------------------------------------- */


    };

    $.fn.search = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.songs.apply(this, arguments);
        }

    };

})(jQuery);