<?php
/* ===========================================================================================
    Archivo: footer.php
    Descripcion: Pie de código HTML para la Creación de un nuevo Bienes.
    Fecha de Creacion: 1-05-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="<?= base_url('public/js/auth/createElement.js') ?>"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<script>
    function ordenarSelect(id_componente) {
	var selectToSort = jQuery('#' + id_componente);
	var optionActual = selectToSort.val();
	selectToSort.html(selectToSort.children('option').sort(function (a, b) {
		return a.text === b.text ? 0 : a.text < b.text ? -1 : 1;
	})).val(optionActual);
}

$(document).ready(function () {
	ordenarSelect('marcaS');
	ordenarSelect('modeloS');
	ordenarSelect('numBienS');
	ordenarSelect('colorS');
	ordenarSelect('componenteS');
	ordenarSelect('undAdmS');
	ordenarSelect('trabajadorS');
	ordenarSelect('estadoS');
	ordenarSelect('ciudadS');
	ordenarSelect('municipioS');
	ordenarSelect('parroquiaS');
});

var band = true;

function crearElemento($object, $name) {

	if (band) {
		var input = document.createElement('input');
		input.type = 'text';
		input.name = $name;
		input.id = $name;
		input.className = "form-inputAdd";

		$($object).attr('hidden', true);
		$(input).insertAfter($object);

		band = false;

	} else {
		$('#' + $name).remove();
		$($object).removeAttr('hidden');
		band = true;
	}
}

</script>
</body>

</html>
