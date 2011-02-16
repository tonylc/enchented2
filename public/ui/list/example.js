/* Example - Lists
----------------------------------------------------------------------------- */


    $(window).load(function() {
    
        if (jQuery.fn.favorite) {

            $('.thumbnails.favorite > li, .playlist.favorite > li').favorite();

        }

        if (jQuery.fn.order) {

            $('ol.thumbnails, .thumbnails.order, .albums.order').order();

        }

        if (jQuery.fn.remove) {

            $('.thumbnails li.remove a, .playlist li.remove a').remove();

        }

        if (jQuery.fn.select) {

            $('.select > li').select();

        }
        
        if (jQuery.fn.truncate) {

            $('.thumbnails h4, .albums h4 a').truncate({ characters: 14 });

        }
    
    });