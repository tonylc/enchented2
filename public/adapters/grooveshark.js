/* Grooveshark Adapter
----------------------------------------------------------------------------- */


    adapter = jQuery;
    adapter.grooveshark = function(mode, input, callback) {
    
        var $ = jQuery;
        var api = ('/proxy?url=' + encodeURIComponent('http://tinysong.com/s/' + input) + '?format=json').replace('%20','%2B');

        if (mode == 'search') {

            $.getJSON(api, function(grooveshark) {

                var songs = new Array();

                $.each(grooveshark, function(index, item) {

                    var song = new Array();
    
                    song['id'] = item['SongID'];
                    song['title'] = item['SongName'];
                    song['artist'] = item['ArtistName'];
                    song['album'] = item['AlbumName'];
                    
                    songs.push(song);
                
                });
                
                if ($.isFunction(callback)) {
                    callback.call(this, songs);
                }
    
            });            

        }
    
    };