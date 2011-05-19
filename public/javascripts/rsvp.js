/* LOVE FOR DESIGN
/* RSVP
----------------------------------------------------------------------------- */
/* Page Load */
    $(window).load(function() {

        function toggleGroups() {

            $(this).parent().parent().find('input').each(function() {

                var group = '#' + $(this).attr('id') + '-' + $(this).val();

                if ($(this).hasClass('toggle') && $(this).is(':checked')) {
                    $(group).slideDown('slow');
                } else {
                    $(group).slideUp();
                }

            });

        }

        $('fieldset input').each(toggleGroups);
        $('fieldset input').change(toggleGroups);

    });

ct = {
	placeholder: function() {
		if (!("placeholder" in document.createElement("input"))) { // no placeholder support
			$("[placeholder]").focus(function() {
				var el = $(this), prompt = el.attr("placeholder");
				if (el.val() == prompt) {
					el.val("").removeClass("placeholder-empty");
					if (this.createTextRange) { // make cursor visible in IE
						this.createTextRange().select();
					}
				}
			}).blur(function() {
				var el = $(this), prompt = el.attr("placeholder");
				if (!el.val().replace(/\s/g, "") || el.val().replace(/^\s+|\s+$/, "") == prompt) {
					el.addClass("placeholder-empty").val(prompt);
				}
			}).blur();
		}
	}
}
