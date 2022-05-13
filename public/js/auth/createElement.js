(function ($) {
	$("#formCreate").submit(function (ev) {
		ev.preventDefault();
		$.ajax({
			url: "guardarInv",
			type: "POST",
			data: $(this).serialize(),
			success: function (data) {
				// var json = JSON.parse(data);
				// window.location.replace(json.url);

			},
			statusCode: {
				
				400: function (xhr) {
					var json = JSON.parse(xhr.responseText);

				},
				401: function (xhr) {
					var json = JSON.parse(xhr.responseText);

				}
			},
		});
	});
})(jQuery);
