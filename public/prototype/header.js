/* Page Load
----------------------------------------------------------------------------- */


    $(window).load(function() {

        if ($('body').hasClass('couple')) {
            $('h2').sortable({ axis: 'x', update: function() {
            
                var $order = $('h2').siblings('input');
                    $order.val('');
                
                $('h2 strong').each(function(index) {
                
                    if (index === 0) {
                        var order = $(this).attr('class');
                    } else {
                        order = order + '-' + $(this).attr('class');
                        $(this).siblings('em').insertBefore( $(this) );
                    }
                
                });
                
                $order.val(order);
            
            }});
        }

    });