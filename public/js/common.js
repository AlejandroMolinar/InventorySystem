$(document).ready(function(e) {
    
    $(window).resize(function(){
    //aqui el codigo que se ejecutara cuando se redimencione la ventana
    var alto=$(window).height();
    var ancho=$(window).width();
    //alert("alto: "+alto+" ancho:"+ancho);
        if ( ancho >= 1024 ) {
    	   $('#add').html('Agregar Usuario');
           $('#list').html('Listado de Usuarios');
        /*$('div.ct').show();
            $('#sidebar').removeClass('active');
            $('body').removeClass('sidebar-icon-only');
            $('ul.nav li:first').removeClass('mt-4').addClass('mt-3');
            //$('ul.nav li:first').addClass('mt-3');

            //$('#sidebar').css('position','absolute');   
            $('#sidebar-ul-nav').removeClass('mt-4 py-4');*/
        }else{
           $('#add').html('<small>Agregar Usuario</small>');
           $('#list').html('<small>Listado de Usuarios</small>');
    	/*$('div.ct').hide();
            $('#title-intra').removeClass('d-none');
            $('#tren-title').addClass('d-none');

            //$('#sidebar').removeAttr('style');   
            $('#sidebar-ul-nav').addClass('mt-4 py-4');
            $('ul.nav li:first').removeClass('mt-3').addClass('mt-4');
            //$('ul.nav li:first').addClass('mt-4');*/
        }

        if ( ancho > 1024 ) {
            //$('#smallconexion').addClass('d-lg-block');
        } else {
            //$('#smallconexion').removeClass('d-lg-block');
        }


    });

    /* Inicializa los Select's */
    $('select').formSelect();

    // Borrar
    $('.tooltip_right').tooltip({
        position: 'right',
        html: '¡Borrar!',            
        enterDelay: 200
    });
    // Editar
    $('.tooltip_left').tooltip({
        position: 'left',
        html: '¡Editar!',
        enterDelay: 200
    });
    // Msj Recuperacion
    /*$('.tooltip_mail').tooltip({
        position: 'left',
        html: '¡Enviar Email!',
        enterDelay: 200
    });*/
    $('input#pwd').characterCounter();

    /* Inicializacion del Slider */
    $('.slider').slider({indicators: false});

    /* Inicializacion de Carousel */
    //$('.carousel').carousel({indicators: true});

    /* Sidenav */
    $('.sidenav').sidenav();

    /* Image */

    /*function generarHtml (src) {
	//console.log('src-> ',src.length);return false;
	for (var i = 0; i < src.length ; i++) {
		//console.log('result-- ',src[i]);
	
		var img = '<div class="col c">'+
				'<div class="card">'+
					'<div class="card-image hoverable">'+
						'<img class="center" src="'+ src[i] +'" alt="" width="125" height="125"/>'+
					'</div>'+
				'</div>'+   
			  '</div>';
	}

	//console.log('image-> ',img);

	return img;

    }*/

    function readImage (input) {
	
	// array for get the files.
	var results = [];
	// Valid yeah files is true.
        if (input.files && input.files[0]) {
	    // iteration the files.
            $(input.files).each(function(i,el) {

		//console.log('el: ',el);
		// get type file.
                var typeFile = el.type;
		// array type file for validation.
                var match= ["image/jpeg","image/png","image/jpg"];
		// validation type file.
                if(!((typeFile==match[0]) || (typeFile==match[1]) || (typeFile==match[2]))){
		    // msj error valid
		    var $errType = '<strong class="center">'+
					'<i class="fa fa-warning fa-lg yellow-text"></i>'+
					' Seleccione Extensión de Archivo Valida! <br> (JPEG|JPG|PNG).'+
				   '</strong>';
                    M.toast({html: $errType , classes: 'rounded'});
		    // show icon fa-picture.
		    $('.shadow').show();
                    // add class .c
		    $('#viewPict').addClass('c');
		    // remove atributes, class and img's
		    $('#carousel')
			.attr({'class':'center','style':''})
			.children()
			.remove();
		    // clear input
		    $("#fotos").val('');
		    return false;

                }else{

		    // init FileReader Object.
                    var reader = new FileReader();
                    // event onload the object FileReader.
                    reader.onload = function (e) {

                      //console.log('RESULTADO: ',reader);
                      /*var img = '<div class="col c">'+
                                    '<div class="card">'+
                                        '<div class="card-image hoverable">'+
                                            '<img class="center" src="'+ e.target.result +'" alt="" width="125" height="125"/>'+
                                        '</div>'+
                                    '</div>'+   
                                '</div>';*/

		      // class img.
		      var clases = 'class="hoverable"';
		      // style img.
		      //var style = 'style="border: ridge;"';
		      // init html for carousel.
		      var img = '<a class="carousel-item">'+
				   '<img src="'+ e.target.result +'" '+ clases +' alt="'+ el.name +'" title="'+ el.name +'">'+
				'</a>';
		      // array the html-img's
		      results.push(img);			
			
		      // hide icon fa-picture.
		      $('.shadow').hide();
		      // remove class .c
		      $('#viewPict').removeClass('c');
		      // add atributes and class the carousel.
		      $('#carousel')
			.attr('class', 'carousel center')
			.css({'height': '200px', 'margin-top': '3em'});
		      // create array img in the DOM.
		      $('.carousel').html(results);
		      /* init Carousel */
		      $('.carousel').carousel({indicators: true});

                    }
		    // read data files.
                    reader.readAsDataURL(input.files[i]);
                                        
                }

            });
		
		//console.log('--- ',results);

        }
    }


    //file type validation
    $("#fotos").change(function() {
        readImage(this);
        /*var file = this.files[0];
        var imagefile = file.type;
        var match= ["image/jpeg","image/png","image/jpg"];
        if(!((imagefile==match[0]) || (imagefile==match[1]) || (imagefile==match[2]))){
            var info =  '<div class="col s12 m12">'+
                            '<div class="card-panel blue accent-2 z-depth-3">'+
                                '<span><i class="fa fa-info-circle fa-lg"></i></span>&nbsp;&nbsp;'+
                                '<b>Seleccione Archivo de Imagen Valido! <br> (JPEG|JPG|PNG)</b>.'+
                            '</div>'+
                        '</div>';
            $("#alert")
                .show()
                .html(info);
            setTimeout(function () {
              $("#alert").slideUp(900);
            }, 2000);
            $("#fotos").val('');
            return false;
        }*/
    });

    $("#addPict").on('submit', function(e){
        e.preventDefault();

	var arrSrc = [];
	var src = document.querySelectorAll('img.hoverable'); //$('img.hoverable').src;
	
	//var fot = [];
	//console.log('result:', $('#fotos')[0].files[0]);return false; //-> 3614413
	//var content = file_get_contents(src[0].title);
	//console.log('src: ',content);return false;
	
	// obtener posicion para extraer src
	//var patron = /,/i;
	//var posicion = src[0].src.search(patron);
	// Extraer parte del code src.
	//var code = src[0].src.substr(posicion);
	
	//var content = file_get_contents(code);
	//console.log('Content: ',content);return false;	

	for (var i = 0; i < src.length; i++){
		
		arrSrc.push({[i]:src[i].src});

	}

	
	//console.log('data-> ',JSON.stringify(fot));return false;

	var dato = $('#fotos')[0].files.length;
	
        var data = new FormData(this);
            data.append('cnt', dato);
	    data.append('src', JSON.stringify(arrSrc));
	

	/*var file = $('#fotos')[0].files
	var data = new FormData();
		data.append('archivo', file);*/

        // Ajax.
        $.ajax({
            type: 'POST',
            url: base_url + 'Pict',
            data: data,
            contentType: false,
            cache: false,
            processData:false,
            beforeSend: function(){
                $('#btnImg,#fotos').attr("disabled","disabled");
                $('#addPict,#pi').css("opacity",".3");
             },
            success: function(msg){
                //console.log('MENSAJE: ',msg);
                switch (msg) {
                    case '0':
                        var $msj = '<strong class="teal-text"> Datos Guardados Correctamente. <i class="fa fa-check-square-o fa-lg" aria-hidden="true"> </i></strong>';
			M.toast({
			    html: $msj,
			    classes: 'rounded',
                            completeCallback: function(){
			
				    //$("#fotos").each(function(i,el) {
					// clear input
					$("#fotos").val('');
					$("#file-path").val('');
				        $('#FormImg,#pi').css("opacity","");
				        $("#btnImg,#fotos").removeAttr("disabled");                        
				        //$('.loadimage').load('index.php');//actualizas el div
		  		        
					// add class .c
					$('#viewPict').addClass('c');
					// remove atributes, class and img's
					$('#carousel')
					    .attr({'class':'center','style':''})
					    .children()
					    .remove();
					// show icon fa-picture.
					$('.shadow').show();

				        //return false;
				    //});
                            }
                        });


                        break;
		    case '1':
                        var $msj2 = '<strong class="red-text"> No Se Registraron los Datos Correctamente. <i class="fa fa-frown-o fa-lg" aria-hidden="true"> </i></strong>';
                            M.toast({html: $msj2, classes: 'rounded',
                                completeCallback: function(){
                                    // Otro msj.
                                    var $msj3 = '<strong class="yellow-text"> Error en la Conexion. <i class="fa fa-exclamation-circle fa-lg" aria-hidden="true"> </i></strong>';
                                    M.toast({html: $msj3 , classes: 'rounded'});
                                }
                            });
                        break;
                    /*case '-98':
                        $("#alert")
                            .attr('class','alert alert-warning text-center')
                            .show()
                            .html('<b><i class="fa fa-exclamation fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;'+
                                  'Esta Imagen Ya Fue Cargarda al Sistema.</b>');
                        setTimeout(function () {
                          $("#alert").slideUp(800);
                        }, 2000);
                        break;
                    case '303':
                        $("#alert")
                            .attr('class','alert alert-warning text-center')
                            .show()
                            .html('<b><i class="fa fa-exclamation fa-lg" aria-hidden="true"></i>&nbsp;&nbsp;'+
                                  'El Archivo Supera el Tamaño Maximo Permitido. (2 MB)</b>');
                        setTimeout(function () {
                          $("#alert").slideUp(800);
                        }, 2000);
                        break;*/
                    case '404':
			    // msj error.
			    var $err = '<strong class="center">'+
						'<i class="fa fa-warning fa-lg yellow-text"></i>'+
						' Seleccione el Archivo!'+
					   '</strong>';
		            M.toast({html: $err , classes: 'rounded'});
                        break;
                }
                
                setTimeout(function () {
                    $('#addPict,#pi').css("opacity","");
                    $("#btnImg,#fotos").removeAttr("disabled");
                }, 6000);
            }
        });
    });

    function file_get_contents(filename) {
        fetch(filename).then((resp) => resp.text()).then(function(data) {
	    //console.log('data: ',data);
            return data;
        });
    }


    /* Fin Image */


});
