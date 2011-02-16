/* Character Counter
----------------------------------------------------------------------------- */


    (function($) {

        $.fn.count = function(parameters) {
        
            var defaults = {
            
                debug: false
    
            };
    
            var parameters = $.extend(defaults, parameters);
    
            return this.each(function(index) {

                var $input = $(this);

                var $counter = $('<var><span>0</span> Characters Left</var>').insertAfter(this);
                    $counter = $counter.children('span');

                if (this.tagName.toLowerCase() == 'textarea') {

                    var maximum = parseInt($input.attr('cols'));
                
                } else {

                    var maximum = parseInt($input.attr('size'));
                
                }
    
                function count(event) {
        
                    var characters = parseInt($input.val().length);
                    var count = parseInt($counter.text());
    
                    $counter.text(maximum - characters);

                    if (characters > maximum) {
                        $counter.parent().addClass('maximum');
                    } else if (characters < maximum) {
                        $counter.parent().removeClass('maximum');
                    }
    
                }
        
                $input.each(count);
                $input.keydown(count);
                $input.keyup(count);
                $input.change(count);
    
            });
        
        };
    
    })(jQuery);