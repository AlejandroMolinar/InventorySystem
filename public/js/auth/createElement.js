(function ($) {
	$("#formCreate").submit(function (ev) {
		ev.preventDefault();
		$.ajax({
			url: "guardarInv",
			type: "POST",
			data: $(this).serialize(),
			success: function (data) {
				var json = JSON.parse(data);
				window.location.replace(json.url);

			},
			statusCode: {
				400: function (xhr) {

					$("#marca_err").html('');
					$("#modelo_err").html('');
					$("#serial_err").html('');
					$("#numBien_err").html('');
					$("#color_err").html('');
					$("#componente_err").html('');
					$("#undAdm_err").html('');
					$("#trabajador_err").html('');
					$("#ciudad_err").html('');
					$("#municipio_err").html('');
					$("#parroquia_err").html('');

					var json = JSON.parse(xhr.responseText);

					if (json.marca.length != 0) {
						$("#marca_err").html('<div class="alert alert-danger" role="alert">'
							+ json.marca + '</div>');
					}
					// if (json.marcaAdd.length != 0) {
					// 	$("#marca_err").html('<div class="alert alert-danger" role="alert">'
					// 		+ json.marcaAdd + '</div>');
					// }
					if (json.modelo.length != 0) {
						$("#modelo_err").html('<div class="alert alert-danger" role="alert">'
							+ json.modelo + '</div>');
					}
					// if (json.modeloAdd.length != 0) {
					// 	$("#modelo_err").html('<div class="alert alert-danger" role="alert">'
					// 		+ json.modeloAdd + '</div>');
					// }
					if (json.serial.length != 0) {
						$("#serial_err").html('<div class="alert alert-danger" role="alert">'
							+ json.serial + '</div>');
					}
					if (json.numBien.length != 0) {
						$("#numBien_err").html('<div class="alert alert-danger" role="alert">'
							+ json.numBien + '</div>');
					}
					// if (json.numBienAdd.length != 0) {
					// 	$("#numBien_err").html('<div class="alert alert-danger" role="alert">'
					// 		+ json.numBienAdd + '</div>');
					// }
					if (json.color.length != 0) {
						$("#color_err").html('<div class="alert alert-danger" role="alert">'
							+ json.color + '</div>');
					}
					if (json.componente.length != 0) {
						$("#componente_err").html('<div class="alert alert-danger" role="alert">'
							+ json.componente + '</div>');
					}
					if (json.undAdm.length != 0) {
						$("#undAdm_err").html('<div class="alert alert-danger" role="alert">'
							+ json.undAdm + '</div>');
					}
					if (json.trabajador.length != 0) {
						$("#trabajador_err").html('<div class="alert alert-danger" role="alert">'
							+ json.trabajador + '</div>');
					}
					if (json.ciudad.length != 0) {
						$("#ciudad_err").html('<div class="alert alert-danger" role="alert">'
							+ json.ciudad + '</div>');
					}
					if (json.municipio.length != 0) {
						$("#municipio_err").html('<div class="alert alert-danger" role="alert">'
							+ json.municipio + '</div>');
					}
					if (json.parroquia.length != 0) {
						$("#parroquia_err").html('<div class="alert alert-danger" role="alert">'
							+ json.parroquia + '</div>');
					}
				},
				401: function (xhr) {
					$("#create_err").html('');

					var json = JSON.parse(xhr.responseText);

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
