/* Vimeo Adapter
----------------------------------------------------------------------------- */


    adapter = jQuery;
    adapter.vimeo = function(input, callback) {
    
        var $ = jQuery;
    
        var id = (input.match(/^http/) ? input.split('/').pop() : input.replace(/^.*\?clip_id=(.{7}).*/, '$1'));
        var api = '/proxy?url=' + encodeURIComponent('http://vimeo.com/api/v2/video/' + id + '.json');
        var video = new Array();

        if (callback) {

            $.getJSON(api, function(vimeo) {
    
                $.each(vimeo, function(index, item) {
                
                    video['id'] = id;
                    video['title'] = item['title'];
                    video['thumbnail'] = item['thumbnail_medium'];
                    video['poster'] = item['thumbnail_large'];
                    video['player'] = 'http://player.vimeo.com/video/' + id;
    
                });
    
                if ($.isFunction(callback)) {
                    callback.call(this, video);
                }
    
            });

        } else {
        
            return id;
        
        }
    
    };