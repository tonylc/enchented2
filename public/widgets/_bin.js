/* Widgets
----------------------------------------------------------------------------- */


    $(window).load(function() {

        var $widgets = $('#widgets ul li a');
        var $bin = $('#widgets');
        
        $widgets.click(function() {
        
            var $widget = $bin.children('.' + $(this).parent().attr('class'));
            
            $widget.clone().appendTo('#content').initialize();
            return false;
        
        });

        $('div#content').sortable({

            items: '> form, > div:not(.guide)',
            handle: 'h3.handle',
            forceHelperSize: true

        });

    });