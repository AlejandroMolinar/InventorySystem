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
			error: function (xhr) {

				// Error Vacio
				$("#err_register > label").html("");
				$("#err_login > label").html("");

				//Error Login
				$("#email_si > span > label").html("");
				$("#email_si > input").removeClass("invalid");
				$("#pass_si > span > label").html("");
				$("#pass_si > input").removeClass("invalid");

				//Error Clave Registro
				$("#pass_sp > span > label").html("");
				$("#pass_sp > input").removeClass("invalid");
				$("#cfpass_sp > input").removeClass("invalid");

				//Error Registro
				$("#email_sp > span > label").html('');
				$("#email_sp > input").removeClass("invalid");
				$("#nom_sp > span > label").html('');
				$("#nom_sp > input").removeClass("invalid");
				$("#apel_sp > span > label").html('');
				$("#apel_sp > input").removeClass("invalid");
				$("#ced_sp > span > label").html('');
				$("#ced_sp > input").removeClass("invalid");
				$("#area_sp > span > label").html('');
				$("#area_sp > input").removeClass("invalid");
				$("#pass_sp > span > label").html('');
				$("#pass_sp > input").removeClass("invalid");
				$("#cfpass_sp > span > label").html('');
				$("#cfpass_sp > input").removeClass("invalid");

				if (xhr.status == 400) {
					var json = JSON.parse(xhr.responseText); 

					if (json.email_si != null || json.password_si != null) {
						if (json.email_si.length != 0) {
							$("#email_si > span > label").html(json.email_si);
							$("#email_si > input").addClass("invalid");
						}
						if (json.password_si.length != 0) {
							$("#pass_si > span > label").html(json.password_si);
							$("#pass_si > input").addClass("invalid");
						}
					}
					if (json.email_sp != null || json.nombre_sp != null || json.apellido_sp != null || json.cedula_sp != null
						|| json.area_sp != null || json.password_sp != null || json.rep_password_sp != null) {
						
						if (json.email_sp.length != 0) {
							$("#email_sp > span > label").html(json.email_sp);
							$("#email_sp > input").addClass("invalid");
						}
						if (json.nombre_sp.length != 0) {
							$("#nom_sp > span > label").html(json.nombre_sp);
							$("#nom_sp > input").addClass("invalid");
						}
						if (json.apellido_sp.length != 0) {
							$("#apel_sp > span > label").html(json.apellido_sp);
							$("#apel_sp > input").addClass("invalid");
						}
						if (json.cedula_sp.length != 0) {
							$("#ced_sp > span > label").html(json.cedula_sp);
							$("#ced_sp > input").addClass("invalid");
						}
						if (json.area_sp.length != 0) {
							$("#area_sp > span > label").html(json.area_sp);
							$("#area_sp > input").addClass("invalid");
						}
						if (json.password_sp.length != 0) {
							$("#pass_sp > span > label").html(json.password_sp);
							$("#pass_sp > input").addClass("invalid");
						}
						if (json.rep_password_sp.length != 0) {
							$("#cfpass_sp > span > label").html(json.rep_password_sp);
							$("#cfpass_sp > input").addClass("invalid");
						}
					}
					if (json.errvacio != null) {
						if (json.errvacio.length != 0) {
							$("#err_login > label").html(json.errvacio);
							$("#err_register > label").html(json.errvacio);
						}
					}
					if (json.errcts != null) {
						if (json.errcts.length != 0) {
							$("#pass_sp > span > label").html(json.errcts);
							$("#pass_sp > input").addClass("invalid");
							$("#cfpass_sp > input").addClass("invalid");
						}
					}
					if (json.err_registro != null) {
						if (json.err_registro.length != 0) {
							$("#err_register > label").html(json.err_registro);

						}
					}
					
				}
				else if (xhr.status == 401) {
					var json = JSON.parse(xhr.responseText);
					$("#err_login > label").html('');

					if (json.msg != null) {
						if (json.msg.length != 0) {
							$("#err_login > label").html(json.msg);
						}
					}
				}
			},
		});
	});
})(jQuery);
