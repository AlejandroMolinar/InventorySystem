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
					<td><?= $id=$items['id'] ?></td>		
					<td><?= ($items['rango'] == 1)? 'Admin': 'User';  ?></td>		
					<td><?= $items['email'] ?></td>		
					<td><?= $items['nombre'] ?></td>		
					<td><?= $items['apellido'] ?></td>		
					<td><?= $items['cedula'] ?></td>		
					<td><?= $items['areaAdm']->desc_uni_adm ?></td>		
					<td><?= $items['fecha'] ?></td>		
					<td><?= $items['hora'] ?></td>		
					<td><?= $items['status'] ?></td>		
					<td>
						<button type="button" class="btn btn-success" 
						onclick="window.location.href=' <?= base_url("updateUser/$id") ?>'">Actualizar</button>
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