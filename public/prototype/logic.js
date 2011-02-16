/* Logic Helper Bridge
----------------------------------------------------------------------------- */


    var guest;
    var trial;
    var couple;


    $(document).ready(function() {
    
        guest = ($('body').hasClass('guest') ? true : false);
        trial = ($('body').hasClass('trial') ? true : false);
        couple = ($('body').hasClass('couple') ? true : false);
    
    });