jQuery(document).ready(function($) {
	$('.sort-by').change(function(event) {
		var a = $(this).val();
		var url = window.location.href;
		window.location.href = url + '?'+ a;
	});
});