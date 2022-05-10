<div class="inventario">
	<h1>Control de Inventario</h1>


	<table id="example" class="table table-striped table-bordered" style="width:100%">
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
				<th>Fecha de Creaci&oacuten</th>
				<th>Hora de Creaci&oacuten</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach ($table as $items) : ?>
				<tr>
					<td><?= $items->id ?></td>
					<td><?= $items->marca ?></td>
					<td><?= $items->modelo ?></td>
					<td><?= $items->serial ?></td>
					<td><?= $items->numBien ?></td>
					<td><?= $items->color ?></td>
					<td><?= $items->componente ?></td>
					<td><?= $items->undAdm ?></td>
					<td><?= $items->nombre ?> <?= $items->apellido ?></td>
					<td><?= $items->ciudad ?></td>
					<td><?= $items->municipio ?></td>
					<td><?= $items->parroquia ?></td>
					<td><?= $items->fecha ?></td>
					<td><?= $items->hora ?></td>
					<td><?= $items->status ?></td>
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