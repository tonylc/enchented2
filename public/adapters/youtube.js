/* YouTube Adapter
----------------------------------------------------------------------------- */


    adapter = jQuery;
    adapter.youtube = function(input, callback) {
    
        var $ = jQuery;
    
        var id = (input.match(/^http/i) || input.match(/^www\./i) || input.match(/^youtube\.com/i) ? input.replace(/^[^v]+v.(.{11}).*/, '$1') : input.replace(/^.*youtube.com\/v\/(.{11}).*/, '$1'));
        var api = '/proxy?url=' + encodeURIComponent('http://gdata.youtube.com/feeds/api/videos?v=2&alt=jsonc&q=' + id);
        var video = new Array();

        if (callback) {

            $.getJSON(api, function(youtube) {
    
                $.each(youtube.data.items, function(index, item) {
                
                    video['id'] = id;
                    video['title'] = item['title'];
                    video['thumbnail'] = item['thumbnail']['sqDefault'];
                    video['poster'] = item['thumbnail']['hqDefault'];
                    video['player'] = 'http://www.youtube.com/v/' + id + '?showinfo=0';
    
                });
    
                if ($.isFunction(callback)) {
                    callback.call(this, video);
                }
    
            });

        } else {

            return id;
        
        }
        
    };