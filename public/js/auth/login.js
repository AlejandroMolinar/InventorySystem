(function($) {
    $('#form_data').submit(function(ev){
        ev.preventDefault();
        $.ajax({
            url: 'logadd',
            type: 'POST',
            data: $(this).serialize(),
            success: function (data) {
                var json= JSON.parse(data);
                console.log(data);
            },
            error: function (xhr) {
               if(xhr.status == 400){
                    var json= JSON.parse(xhr.responseText);

                    if (json.email.length != 0) {
                        // $("#email_si > span").addDataError(json.email);
                        $("#email_si > span > $error").html(json.email);
                        $("#email_si > input").addClass('invalid');

                    }
               } 
            }
        });
    });
})(jQuery)
