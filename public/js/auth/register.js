// (function ($) {
// 	$("#form_data").submit(function (ev) {
// 		ev.preventDefault();
// 		$.ajax({
// 			url: "logadd",
// 			type: "POST",
// 			data: $(this).serialize(),
// 			success: function (data) {
// 				$("#email_si > span > label").html("");
// 				$("#pass_si > span > label").html("");

// 				$("#email_si > input").removeClass("invalid");
// 				$("#pass_si > input").removeClass("invalid");
// 			},
// 			error: function (xhr) {
//                 if (xhr.status == 400) {

// 					var json = JSON.parse(xhr.responseText);

// 					if (json.email.length != 0) {
// 						// $("#email_si > span").addDataError(json.email);
// 						$("#email_si > span > label").html(json.email);
// 						$("#email_si > input").addClass("invalid");
// 					}
// 					if (json.password.length != 0) {
// 						// $("#email_si > span").addDataError(json.email);
// 						$("#pass_si > span > label").html(json.password);
// 						$("#pass_si > input").addClass("invalid");
// 					}
// 				}
// 			},
// 		});
// 	});
// })(jQuery);
