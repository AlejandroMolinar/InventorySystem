(function ($) {
	$("#userUpdate").submit(function (ev) {
		ev.preventDefault();
		$.ajax({
			url: "http://localhost/InventorySystem/guardarUser",
			type: "POST",
			data: $(this).serialize(),
			success: function (data) {
				var json = JSON.parse(data);
				window.location.replace(json.url);

			},
			statusCode: {
				400: function (xhr) {

					$("#email_err").html('');
					$("#nombre_err").html('');
					$("#apellido_err").html('');
					$("#cedula_err").html('');

					var json = JSON.parse(xhr.responseText);

					if (json.serial != null || json.numBien != null) {

						if (json.email.length != 0) {
							$("#email_err").html('<div class="alert alert-danger" role="alert">'
								+ json.email + '</div>');
						}
						if (json.nombre.length != 0) {
							$("#nombre_err").html('<div class="alert alert-danger" role="alert">'
								+ json.nombre + '</div>');
						}
						if (json.apellido.length != 0) {
							$("#apellido_err").html('<div class="alert alert-danger" role="alert">'
								+ json.apellido + '</div>');
						}
						if (json.cedula.length != 0) {
							$("#cedula_err").html('<div class="alert alert-danger" role="alert">'
								+ json.cedula + '</div>');
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
