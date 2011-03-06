/* Customization points
----------------------------------------------------------------------------- */


(function($) {

    var methods = {


/* Initialization method
----------------------------------------------------------------------------- */


    init: function() {

        return this.each(function() {

            var $widgets = $(this).children('div.widgets');

            $(this).find('ul.widgets a').click(function() {

                var name = $(this).parent().attr('class');
                var template;

                if (name.match(/\s/)) {
                    template = '.' + name.replace(/\s/, '.');
                    name = name.split(/\s/).shift();
                } else {
                    template = '.' + name;
                }

                $widgets.customize('add', { name: name, widget: $widgets.children(template) });
            
            });

            $('div#content').sortable({
        
                items: '> form, > div:not(.guide)',
                handle: 'h3.handle',
                forceHelperSize: true
        
            });

        });
    
    },


/* Open method
----------------------------------------------------------------------------- */
        

    open: function() {    

        return this.each(function() {
        
            $(this).animate({ bottom: '0px' }, 500);

        });
    
    },


/* Close method
----------------------------------------------------------------------------- */
        

    close: function() {    

        return this.each(function() {
        
            $(this).animate({ bottom: '-80px' }, 500);

        });
    
    },


/* Add method: injects widgets into page
----------------------------------------------------------------------------- */
        

    add: function(options) {    

        var defaults = {
        
            target: '#content'

        };

        var options = $.extend(defaults, options);

        return this.each(function() {

            var $widget = options.widget;
            
            if ($widget.hasClass('text')) {
                $widget.find('textarea').attr('id', 'instance-' + Math.floor(Math.random()*50));
            }
            
            $widget.clone().appendTo(options.target).initialize(options.name);

        });
    
    },


/* Save method
----------------------------------------------------------------------------- */


    save: function() {
    
    }


/* Create jQuery Plug-in
----------------------------------------------------------------------------- */


    };

    $.fn.customize = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        }

    };

})(jQuery);