/* Grooveshark Adapter
----------------------------------------------------------------------------- */


    adapter = jQuery;
    adapter.grooveshark = function(mode, input, callback) {
    
        var $ = jQuery;
        var api = ('/proxy?url=' + encodeURIComponent('http://tinysong.com/s/' + input) + '?format=json').replace('%20','%2B');

        if (mode == 'search') {

            $.getJSON(api, function(grooveshark) {

                var songs = [];

                $.each(grooveshark, function(index, item) {

                    song = {
                        id: item['SongID'],
                        title: item['SongName'],
                        artist: item['ArtistName'],
                        album: item['AlbumName']
                    };

                    songs.push( song );
                
                });
                
                songs = { songs: songs };
                
                if ($.isFunction(callback)) {
                    callback.call(this, songs);
                }
    
            });            

        }
    
    };