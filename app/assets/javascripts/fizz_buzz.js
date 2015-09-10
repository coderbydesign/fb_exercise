$(function(){
	$('.number-to-fb').each(function(i) {
		var ele = $(this);
		var id = $(this).attr('id');

		$.get('/fizz_buzz_number?id=' + id, function(data) {
			ele.append(data.fb_value);
		})
	});
});
