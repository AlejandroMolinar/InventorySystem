<div class="contact_form">
    <div class="formulario">
        <h1>Crear Nuevo Bien</h1>

        <!-- 'cod_marc', 	
            'id_mod', 		
            'id_bien_mue', 	
            'id_col', 		
            'id_tp_comp', 	
            'id_uni_adm', 	
            'id_trb', 		
            'id_ciu', 		
            'id_mun', 		
            'id_parr',		 -->
        <form id="formCreate" action="guardarInv" method="post">
            <p>
                <label>Marca
                    <span class="obligatorio">*</span>
                </label>
                <select id="marcaS" name="marcaS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($marca as $key) : ?>
                        <option value="<?= $key->cod_marc ?>"><?= $key->den_com_marc ?></option>
                    <?php endforeach; ?>
                </select>
            </p>

            <p>
                <label>Modelo
                    <span class="obligatorio">*</span>
                </label>
                <select id="modeloS" name="modeloS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($modelo as $key) : ?>
                        <option value="<?= $key->id_mod ?>"><?= $key->den_mod ?></option>
                    <?php endforeach; ?>
                </select>
            </p>

            <p>
                <label>Serial
                    <span class="obligatorio">*</span>
                </label>
                <input id="serialS" name="serialS" type="text" class="form-inputs" required>
            </p>

            <p>
                <label>N&uacutemero de Bien
                    <span class="obligatorio">*</span>
                </label>
                <input id="numBienS" name="numBienS" type="text" class="form-inputs" required>

            </p>

            <p>
                <label>Color
                    <span class="obligatorio">*</span>
                </label>
                <select id="colorS" name="colorS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($color as $key) : ?>
                        <option value="<?= $key->id_col ?>"><?= $key->desc_col ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Tipo de Componente
                    <span class="obligatorio">*</span>
                </label>
                <select id="componenteS" name="componenteS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($componente as $key) : ?>
                        <option value="<?= $key->id_tp_comp ?>"><?= $key->mat_tp_comp ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Unidad Administrativa
                    <span class="obligatorio">*</span>
                </label>
                <select id="undAdmS" name="undAdmS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($undAdm as $key) : ?>
                        <option value="<?= $key->id_uni_adm ?>"><?= $key->desc_uni_adm ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Trabajador a Cargo
                    <span class="obligatorio">*</span>
                </label>
                <select id="trabajadorS" name="trabajadorS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($trabajador as $key) : ?>
                        <option value="<?= $key->id_trb ?>"><?= $key->nombre_trb ?> <?= $key->apellido_trb ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Ciudad
                    <span class="obligatorio">*</span>
                </label>
                <select id="ciudadS" name="ciudadS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($ciudad as $key) : ?>
                        <option value="<?= $key->id_ciu ?>"><?= $key->desc_ciu ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Municipio
                    <span class="obligatorio">*</span>
                </label>
                <select id="municipioS" name="municipioS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($municipio as $key) : ?>
                        <option value="<?= $key->id_mun ?>"><?= $key->desc_mun ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Parroquia
                    <span  class="obligatorio">*</span>
                </label>
                <select id="parroquiaS" name="parroquiaS" class="form-selects">
                    <option selected>Selecionar</option>
                    <?php foreach ($parroquia as $key) : ?>
                        <option value="<?= $key->id_parr ?>"><?= $key->desc_parr ?></option>
                    <?php endforeach; ?>
                </select>
            </p>

            <button type="submit" class="submit" id="enviar">
                <p>Enviar</p>
            </button>

            <p class="aviso">
                <span class="obligatorio"> * </span>los campos son obligatorios.
            </p>

        </form>
    </div>
</div>