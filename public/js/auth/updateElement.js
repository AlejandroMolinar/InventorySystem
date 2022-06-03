(function ($) {
	$("#formUpdate").submit(function (ev) {
		ev.preventDefault();
		$.ajax({
			// url: "http://localhost/InventorySystem/guardarUp",
			url: "guardarUp",
			type: "POST",
			data: $(this).serialize(),
			success: function (data) {
				var json = JSON.parse(data);
				window.location.replace(json.url);

			},
			statusCode: {
				400: function (xhr) {

					$("#serial_err").html('');
					$("#numBien_err").html('');

					var json = JSON.parse(xhr.responseText);

					if (json.serial != null || json.numBien != null) {

						if (json.serial.length != 0) {
							$("#serial_err").html('<div class="alert alert-danger" role="alert">'
								+ json.serial + '</div>');
						}
						if (json.numBien.length != 0) {
							$("#numBien_err").html('<div class="alert alert-danger" role="alert">'
								+ json.numBien + '</div>');
						}
					}

				},
				401: function (xhr) {
					var json = JSON.parse(xhr.responseText);
					$("#create_err").html('');

					if (json.msg != null) {
						if (json.msg.length != 0) {
							$("#create_err").html('<div class="alert alert-danger" role="alert">'
								+ json.msg + '</div>');
						}
					}

				}
			},
		});
	});
})(jQuery);
