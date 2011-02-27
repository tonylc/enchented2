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

                var widget = $(this).parent().attr('class');

                $widgets.customizer('add', { widget: widget, widgets: $widgets });
            
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

        });
    
    },

/* Add method
----------------------------------------------------------------------------- */
        

    add: function(options) {    

        var defaults = {
        
            target: '#content'

        };

        var options = $.extend(defaults, options);

        return this.each(function() {

            if (options.widget == 'text') {
                $(options.widgets).find('div.editor.text textarea').attr('id', 'instance-' + Math.floor(Math.random()*50));
            }
            
            $(options.widgets).children('.' + options.widget).clone().appendTo(options.target).initialize(options.widget);

        });
    
    },


/* Save method
----------------------------------------------------------------------------- */


    save: function() {
    
    }


/* Create jQuery Plug-in
----------------------------------------------------------------------------- */


    };

    $.fn.customizer = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        }

    };

})(jQuery);