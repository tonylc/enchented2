/* Select Control
----------------------------------------------------------------------------- */


(function($) {

    var methods = {


    // Toggles selection of list items with both a checkbox input and UI feedback

        init: function(options) {

            var defaults = {
            
                debug: false
    
            };
    
            var options = $.extend(defaults, options);
    
            return this.each(function(index) {

                var $item = $(this);
                var $action = $(this).find('ul.actions li.select a');
                var $select = $(this).find('label.select input');
                var context = $(this).parent().attr('title').slice(0,-1);

                function select() {

                    $select.attr('checked','checked');
                    $item.addClass('added');
                    $action.text('Remove').parent().addClass('remove').removeClass('add');            

                }
                
                function deselect() {

                    $select.removeAttr('checked');
                    $item.removeClass('added');
                    $action.text('Add ' + context).parent().addClass('add').removeClass('remove');
                
                }

                if ($select.attr('checked') == true) {
                    select();
                }

                $(this).find('ul.actions li.add a').live('click', select);
                $(this).find('ul.actions li.remove a').live('click', deselect);
                $(this).find('ul:first-child').click(function() {

                    if ($(this).parent().hasClass('added')) {
                        deselect();
                    } else {
                        select();
                    }
                
                });

            });
    
        
        },
    

    // Method selects all items in a selected list; unselects all items if at least 1 selected item is found
        
        all: function() {

            return this.each(function(index) {

                function select($list) {

                    $list.find('label.select input').attr('checked','checked');
                    $list.children('li').addClass('added');
                    $list.find('ul.actions li.add a').text('Remove').parent().addClass('remove').removeClass('add');
                
                }
                
                function deselect($list, context) {

                    $list.find('label.select input').removeAttr('checked');
                    $list.children('li').removeClass('added');
                    $list.find('ul.actions li.remove a').text('Add ' + context).parent().addClass('add').removeClass('remove');
                
                }

                $(this).parent().each(function() {

                    var context = $(this).attr('title').slice(0,-1);

                    if ($(this).find('li.added').length > 0) {
                        deselect($(this), context);
                    } else {
                        select($(this));
                    }
                
                });
                
                return false;

            });

        }
    
    };

    $.fn.select = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        }

    };

})(jQuery);