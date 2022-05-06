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
					<td><?= $items->id_inv_bien ?></td>
					<td><?= $items->cod_marc ?></td>
					<td><?= $items->id_mod_bien ?></td>
					<td><?= $items->serial_bien ?></td>
					<td><?= $items->id_num_bien ?></td>
					<td><?= $items->id_clr_bien ?></td>
					<td><?= $items->id_tpc_bien ?></td>
					<td><?= $items->id_adm_bien ?></td>
					<td><?= $items->id_trb_bien ?></td>
					<td><?= $items->id_ciu_bien ?></td>
					<td><?= $items->id_mun_bien ?></td>
					<td><?= $items->id_parr_bien ?></td>
					<td><?= $items->fec_crt_inv ?></td>
					<td><?= $items->hor_crt_inv ?></td>
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