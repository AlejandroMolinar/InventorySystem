<?php
/* ===========================================================================================
    Archivo: tablaUsuarios.php
    Descripcion: Vista tabla para la Gestion de Usuarios.
    Fecha de Creacion: 25-05-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="tableUser">
	<h1>Gestion de Usuarios</h1>

	<table id="example" class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>Id</th>
				<th>Rango</th>
				<th>Email</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>C&eacutedula</th>
				<th>Unidad Administrativa</th>
				<th>Fecha Creaci&oacuten</th>
				<th>Hora Creaci&oacuten</th>
				<th>Status</th>
				<th>Acciones</th>

			</tr>
		</thead>
		<tbody>
			<?php foreach ($dataTable as $items) : ?>
				<tr class="tr_content">
					<td><?= $id=$items->id_trb ?></td>		
					<td><?= ($items->id_tp_trb == 1)? 'Admin': 'User';  ?></td>		
					<td><?= $items->email_trb ?></td>		
					<td><?= $items->nombre_trb ?></td>		
					<td><?= $items->apellido_trb ?></td>		
					<td><?= $items->cedula_trb ?></td>		
					<td><?= $items->area_trb ?></td>		
					<td><?= $items->fecha_crt_trb ?></td>		
					<td><?= $items->hora_crt_trb ?></td>		
					<td><?= $items->status ?></td>		
					<td>
						<button type="button" class="btn btn-success" 
						onclick="window.location.href=' <?= base_url("updateInv/$id") ?>'">Actualizar</button>
					</td>
				</tr>
			<?php endforeach; ?>

		</tbody>
		<tfoot>
			<tr>
				<th>Id</th>
				<th>Rango</th>
				<th>Email</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>C&eacutedula</th>
				<th>Unidad Administrativa</th>
				<th>Fecha Creaci&oacuten</th>
				<th>Hora Creaci&oacuten</th>
				<th>Status</th>
				<th>Acciones</th>
			</tr>
		</tfoot>
	</table>
</div>