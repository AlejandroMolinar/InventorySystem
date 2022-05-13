<div class="contact_form">
    <div class="formulario">
        <h1>Crear Nuevo Bien</h1>

        <!-- <td><?= $items['id'] ?></td>
        <td><?= $items['marca']->den_com_marc ?></td>
        <td><?= $items['modelo']->den_mod ?></td>
        <td><?= $items['serial'] ?></td>
        <td><?= $items['numBien']->num_bien_mue ?></td>
        <td><?= $items['color']->desc_col ?></td>
        <td><?= $items['componente']->mat_tp_comp ?></td>
        <td><?= $items['undAdm']->desc_uni_adm ?></td>
        <td><?= $items['trabajador']->nombre_trb ?> <?= $items['trabajador']->apellido_trb ?></td>
        <td><?= $items['ciudad']->desc_ciu ?></td>
        <td><?= $items['municipio']->desc_mun ?></td>
        <td><?= $items['parroquia']->desc_parr ?></td>
        <td><?= $items['fecha'] ?></td>
        <td><?= $items['hora'] ?></td>
        <td><?= $items['status'] ?></td> -->

        <form action="" method="post">
            <p>
                <label>Marca
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($marca as $key) : ?>
                        <option><?= $key->den_com_marc ?></option>
                    <?php endforeach; ?>
                </select>
            </p>

            <p>
                <label>Modelo
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($modelo as $key) : ?>
                        <option><?= $key->den_mod ?></option>
                    <?php endforeach; ?>
                </select>
            </p>

            <p>
                <label>Serial
                    <span class="obligatorio">*</span>
                </label>
                <input type="text" class="form-inputs" id="validationDefault03" required>
            </p>

            <p>
                <label>N&uacutemero de Bien
                    <span class="obligatorio">*</span>
                </label>
                <input type="text" class="form-inputs" id="validationDefault03" required>

            </p>

            <p>
                <label>Color
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($color as $key) : ?>
                        <option><?= $key->desc_col ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Tipo de Componente
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($componente as $key) : ?>
                        <option><?= $key->mat_tp_comp ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Unidad Administrativa
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($undAdm as $key) : ?>
                        <option><?= $key->desc_uni_adm ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Trabajador a Cargo
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($trabajador as $key) : ?>
                        <option><?= $key->nombre_trb ?> <?= $key->apellido_trb ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Ciudad
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($ciudad as $key) : ?>
                        <option><?= $key->desc_ciu ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Municipio
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($municipio as $key) : ?>
                        <option><?= $key->desc_mun ?></option>
                    <?php endforeach; ?>
                </select>
            </p>
            <p>
                <label>Parroquia
                    <span class="obligatorio">*</span>
                </label>
                <select class="form-selects" aria-label="Default select example">
                    <option selected>Selecionar</option>
                    <?php foreach ($parroquia as $key) : ?>
                        <option><?= $key->desc_parr ?></option>
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