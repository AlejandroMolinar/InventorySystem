<?php
/* ===========================================================================================
    Archivo: inventario_user.php
    Descripcion: Vista tabla Usuario para el Control de Inventario de Bienes.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="inventario">
	<h1>Control de Inventario</h1>

	<table id="example" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Marca</th>
				<th>Modelo</th>
				<th>Serial</th>
				<th>N&uacutemero de Bien</th>
				<th>Color</th>
				<th>Tipo de Componente</th>
				<th>Unidad Administrativa</th>
				<th>Trabajador a Cargo</th>
				<th>Ciudad</th>
				<th>Municipio</th>
				<th>Parroquia</th>
				<th>Fecha Creaci&oacuten</th>
				<th>Hora Creaci&oacuten</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($dataTable as $items) : ?>
				<tr class="tr_content">
					<td><?= $items['id'] ?></td>
					<td><?= $items['marca']-> den_com_marc ?></td>
					<td><?= $items['modelo']-> den_mod ?></td>
					<td><?= $items['serial'] ?></td>
					<td><?= $items['numBien']-> num_bien_mue ?></td>
					<td><?= $items['color']-> desc_col ?></td>
					<td><?= $items['componente']-> mat_tp_comp ?></td>
					<td><?= $items['undAdm']-> desc_uni_adm ?></td>
					<td><?= $items['trabajador']-> nombre_trb ?> <?= $items['trabajador']-> apellido_trb ?></td>
					<td><?= $items['ciudad']-> desc_ciu ?></td>
					<td><?= $items['municipio']-> desc_mun ?></td>
					<td><?= $items['parroquia'] -> desc_parr ?></td>
					<td><?= $items['fecha'] ?></td>
					<td><?= $items['hora'] ?></td>
					<td><?= $items['status'] ?></td>
				</tr>
			<?php endforeach; ?>

		</tbody>
		<tfoot>
			<tr>
				<th>Id</th>
				<th>Marca</th>
				<th>Modelo</th>
				<th>Serial</th>
				<th>N&uacutemero de Bien</th>
				<th>Color</th>
				<th>Tipo de Componente</th>
				<th>Unidad Administrativa</th>
				<th>Trabajador a Cargo</th>
				<th>Ciudad</th>
				<th>Municipio</th>
				<th>Parroquia</th>
				<th>Fecha de Creaci&oacuten</th>
				<th>Hora de Creaci&oacuten</th>
				<th>Status</th>
			</tr>
		</tfoot>
	</table>
</div>