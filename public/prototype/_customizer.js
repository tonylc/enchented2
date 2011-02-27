/* Customizer
----------------------------------------------------------------------------- */




    $(window).load(function() {

        var $widgets = $('#widgets ul li a');
        var $bin = $('#widgets');
        
        $widgets.click(function() {
        
            var widget = $(this).parent().attr('class');
            var $widget = $bin.children('.' + widget);
            
            if (widget == 'text') {
                $widget.find('textarea').attr('id', 'instance-' + Math.floor(Math.random()*50));
            }
            
            $widget.clone().appendTo('#content').initialize(widget);
            return false;
        
        });

        $('div#content').sortable({

            items: '> form, > div:not(.guide)',
            handle: 'h3.handle',
            forceHelperSize: true

        });

    });