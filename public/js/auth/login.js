(function ($) {
	$("#form_data").submit(function (ev) {
		ev.preventDefault();
		$.ajax({
			url: "logadd",
			type: "POST",
			data: $(this).serialize(),
			success: function (data) {
				if (data.status == 200) {
					$("#err_register > label").html(json.errvacio);
					$("#err_register > label").addClass("valid");

				}
			},
			statusCode: {
				400: function (xhr) {
					// Error Vacio
					$("#err_login").html('');
					$("#err_register").html('');

					//Error Login
					$("#email_err").html('');
					$("#pass_err").html('');

					//Error Clave Registro
					$("#pas_err").html('');
					$("#cfpass_err").html('');

					//Error Registro
					$("#nom_err").html('');
					$("#apel_err").html('');
					$("#ced_err").html('');
					$("#are_err").html('');
					$("#ema_err").html('');
					$("#pas_err").html('');
					$("#cfpass_err").html('');





					$("#err_register").html('');

					var json = JSON.parse(xhr.responseText);

					if (json.email_si != null || json.password_si != null) {
						if (json.email_si.length != 0) {
							$("#email_err").html('<div class="alert alert-danger" role="alert">'
								+ json.email_si + '</div>');
						}
						if (json.password_si.length != 0) {
							$("#pass_err").html('<div class="alert alert-danger" role="alert">'
								+ json.password_si + '</div>');
						}
					}
					if (json.email_sp != null || json.nombre_sp != null || json.apellido_sp != null || json.cedula_sp != null
						|| json.area_sp != null || json.password_sp != null || json.rep_password_sp != null) {

						if (json.nombre_sp.length != 0) {

							$("#nom_err").html('<div class="alert alert-danger" role="alert">'
								+ json.nombre_sp + '</div>');
						}
						if (json.apellido_sp.length != 0) {
							$("#apel_err").html('<div class="alert alert-danger" role="alert">'
								+ json.apellido_sp + '</div>');
						}
						if (json.cedula_sp.length != 0) {
							$("#ced_err").html('<div class="alert alert-danger" role="alert">'
								+ json.cedula_sp + '</div>');
						}
						if (json.area_sp.length != 0) {
							$("#are_err").html('<div class="alert alert-danger" role="alert">'
								+ json.area_sp + '</div>');
						}
						if (json.email_sp.length != 0) {
							$("#ema_err").html('<div class="alert alert-danger" role="alert">'
								+ json.email_sp + '</div>');
						}
						if (json.password_sp.length != 0) {
							$("#pas_err").html('<div class="alert alert-danger" role="alert">'
								+ json.password_sp + '</div>');
						}
						if (json.rep_password_sp.length != 0) {
							$("#cfpass_err").html('<div class="alert alert-danger" role="alert">'
								+ json.rep_password_sp + '</div>');
						}
					}
					if (json.errvacio != null) {
						if (json.errvacio.length != 0) {
							$("#err_login").html('<div class="alert alert-danger" role="alert">'
								+ json.errvacio + '</div>');

							$("#err_register").html('<div class="alert alert-danger" role="alert">'
								+ json.errvacio + '</div>');
						}
					}
					if (json.errcts != null) {
						if (json.errcts.length != 0) {
							$("#pas_err").html('<div class="alert alert-danger" role="alert">'
								+ json.errcts + '</div>');

							// $("#cfpass_err").html('<div class="alert alert-danger" role="alert">'
							// 	+ json.errcts + '</div>');
							$("#cfpass_sp > input").addClass("invalid");

						}
					}

				},
				401: function (xhr) {
					var json = JSON.parse(xhr.responseText);
					$("#err_login").html('');
					$("#err_register").html('');


					if (json.msg != null) {
						if (json.msg.length != 0) {
							$("#err_login").html('<div class="alert alert-danger" role="alert">'
								+ json.msg + '</div>');
						}
					}
					if (json.err_registro != null) {
						if (json.err_registro.length != 0) {
							$("#err_register").html('<div class="alert alert-danger" role="alert">'
								+ json.err_registro + '</div>');

						}
					}
				}
			},
		});
	});
})(jQuery);
