/* TEXT EDITOR COMPONENT
----------------------------------------------------------------------------- */


(function($) {

    var methods = {


/* Initialization method: Prepares content for editing
----------------------------------------------------------------------------- */


    init: function() {

        return this.each(function() {

            var $text = $(this);
            var $editor = $text.children('textarea');
            var $content = $editor.html().replace(new RegExp('&lt;', 'g'), '<').replace(new RegExp('&gt;', 'g'), '>');
            
            if ($text.children('div').length == 0) {
                $text.append('<div>' + $content + '</div>');
            }
            
            $text.click(function() {
            
                if (!$(this).hasClass('editing')) {
                    $(this).edit('text');
                }
            
            });

        });
    
    },


/* Text Editing method: Creates a TinyMCE instance for WYSIWYG editing
----------------------------------------------------------------------------- */
        

    text: function(callback) {    

        return this.each(function() {

            var $this = $(this);
            var $text = $this.children('textarea');
            var $toolbar = '';
            var $palette = '';
            var palette = {};

            function revealEditor() {

                setTimeout(function() {
                    $this.css('visibility','visible');
                }, 250);
            
            }
            
            function checkFormat() {
            
                $toolbar.addClass('selected').children('ul').children('li').removeClass('selected');
            
                if ($text.tinymce().queryCommandState('bold')) {
                    $toolbar.children('ul').children('li.bold').addClass('selected');
                }

                if ($text.tinymce().queryCommandState('italic')) {
                    $toolbar.children('ul').children('li.italic').addClass('selected');
                }
            
                if ($text.tinymce().queryCommandState('justifycenter')) {
                    $toolbar.children('ul').children('li.justifycenter').addClass('selected');
                } else if ($text.tinymce().queryCommandState('insertunorderedlist')) {
                    $toolbar.children('ul').children('li.list').addClass('selected');
                } else {
                    $toolbar.children('ul').children('li.justifyleft').addClass('selected');
                }

            }

            function editorEvents(event) {
            
                if (event.type == 'mouseup') {
            
                    var $selection = $($text.tinymce().selection.getNode());
                    var selectionColor = $selection.css('color');

                    checkFormat();
                
                    $.each(palette, function(name, color) {

                        if (color == selectionColor) {

                            $palette.children('li.selected').removeClass('selected');
                            $palette.children('li.' + name).addClass('selected').appendTo($palette);

                        }
                                        
                    });

                }

            }
            
            $this.addClass('editing').css('visibility','hidden').children('div').hide();
            $text.tinymce({
            
                script_url: '/libraries/tinymce-3.3.9.2/tiny_mce.js',
                content_css: '/stylesheets/ui/text/formatting.css',
                plugins: 'autoresize',
                theme: 'advanced',
                skin: '',
                element_format: 'html',
                visual: false,
                visual_table_class: 'developer',
                oninit: revealEditor,
                handle_event_callback: editorEvents,
    
                theme_advanced_toolbar_location : "external",
                theme_advanced_buttons1: 'bold, italic, underline, strikethrough, sup, charmap, |, link, unlink, |, bullist, numlist, table, |, code',
                theme_advanced_buttons2: '',
                theme_advanced_buttons3: '',
                theme_advanced_blockformats: 'h2, h3'
    
            });
            
            $('<div class="toolbar"></div>').insertAfter($text).load('/ui/widget/editor/toolbar', function() {

                $toolbar = $text.siblings('div.toolbar');
                $color = $toolbar.children('ul.color');
                $swatch = $color.children('li');
                $palette = $toolbar.find('ul.palette');
                
                $toolbar.find('li a').click(function() {
                
                    var format = $(this).parent().attr('class').split(' ');
                    var format = format[0];

                    if (format == 'list') {
                        $text.tinymce().execCommand('insertunorderedlist');
                    } else {
                        $text.tinymce().execCommand(format);
                    }

                    checkFormat();
                    return false;
                
                });
                
                $toolbar.find('ul.palette a').click(function() {
                
                    var color = $(this).children('em').css('background-color');

                    $swatch.removeClass().addClass($(this).parent().attr('class'));
                    $text.tinymce().execCommand('forecolor', false, color);
                    return false;
                
                });

                $color.hoverIntent(function() {
                
                    $color.css('height','130px');
                    $palette.animate({ height: '130px' }, 300);
                
                }, function() {
                
                    $palette.animate({ height: '0' }, 300, function() {

                        $color.css('height','20px');
                    
                    });
                
                });

                $palette.children('li').each(function() {
                
                    var name = $(this).attr('class');
                    var color = $(this).children('a').children('em').css('background-color');
    
                    palette[name] = color;
                
                });
                
                $('div#page').click(function() {
                
                    $('div.editor.text.editing').edit('save');
                    $('div#page').unbind('click');
        
                });

            });

        });
    
    },


/* Save method: Returns any edits to their original state
----------------------------------------------------------------------------- */


    save: function(options) {

        var defaults = {
        
            async: false

        };

        var options = $.extend(defaults, options);
        
        return this.each(function() {

            if ($(this).hasClass('editing')) {

                var $contents = $($(this).find('iframe')[0].contentDocument).find('body').html();
                var    contents = $contents.replace(new RegExp('<', 'g'), '&lt;').replace(new RegExp('>', 'g'), '&gt;');

                $(this).children('textarea:tinymce').tinymce().remove();
                $(this).removeClass('editing').children('div.toolbar').remove();
                $(this).children('div').empty().append($contents).show();
                $(this).children('textarea').empty().append(contents);

            }

        });
    
    }


/* Create jQuery Plug-in
----------------------------------------------------------------------------- */


    };

    $.fn.edit = function(method) {

        if (methods[method]) {
            return methods[method].apply(this, Array.prototype.slice.call(arguments, 1));
        } else if (typeof method === 'object' || ! method) {
            return methods.init.apply(this, arguments);
        }

    };

})(jQuery);