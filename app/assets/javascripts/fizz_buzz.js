$(function(){
	$('.number-to-fb').each(function(i) {
		var ele = $(this);
		var n = $(this).attr('id');

		$.get('/fizz_buzz_number?n=' + n, function(data) {
			if (data.success) {
				ele.append(data.fb_value);
			} else {
				$('#error').html(data.error);
			}
		})
	});
});
