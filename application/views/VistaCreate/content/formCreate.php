<?php
/* ===========================================================================================
    Archivo: formCreate.php
    Descripcion: Formulario para el Control de Inventario de Bienes.
    Fecha de Creacion: 1-05-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="contact_form">
    <div class="formulario">
        <h1>Crear Nuevo Bien</h1>
        <form id="formCreate" action="guardarInv" method="post">
            <p>
                <label>Marca
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="marcaS" name="marcaS" class="form-selectAdd">
                    <option value="0" selected>-Seleccionar-</option>
                    <?php foreach ($marca as $key) : ?>
                        <option value="<?= $key->cod_marc ?>"><?= $key->den_com_marc ?></option>
                    <?php endforeach; ?>
                </select>
                
                <button type="button" class="btn btn-success addContent" onclick="crearElemento('#marcaS', 'marcaAdd')">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
                    </svg>
                </button>
                <div id="marca_err"></div>  

            </p>

            <p>
                <label>Modelo
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="modeloS" name="modeloS" class="form-selectAdd">
                    <option value="0" selected>-Seleccionar-</option>
                    <?php foreach ($modelo as $key) : ?>
                        <option value="<?= $key->id_mod ?>"><?= $key->den_mod ?></option>
                    <?php endforeach; ?>
                </select>
                
                <button type="button" class="btn btn-success addContent" onclick="crearElemento('#modeloS', 'modeloAdd')">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
                    </svg>
                </button>
                <div id="modelo_err"></div>  
            </p>

            <p>
                <label>Serial
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <input id="serialAdd" name="serialAdd" type="text" class="form-inputs" autocomplete="off" required>
                <div id="serial_err"></div>  
            </p>

            <p>
                <label>N&uacutemero de Bien
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="numBienS" name="numBienS" class="form-selectAdd">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($numBien as $key) : ?>
                        <option value="<?= $key->id_bien_mue ?>"><?= $key->num_bien_mue ?></option>
                    <?php endforeach; ?>
                </select>
                
                <button type="button" class="btn btn-success addContent" onclick="crearElemento('#numBienS', 'numBienAdd')">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-lg" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M8 2a.5.5 0 0 1 .5.5v5h5a.5.5 0 0 1 0 1h-5v5a.5.5 0 0 1-1 0v-5h-5a.5.5 0 0 1 0-1h5v-5A.5.5 0 0 1 8 2Z"/>
                    </svg>
                </button>
                <div id="numBien_err"></div>  
            </p>

            <p>
                <label>Color
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="colorS" name="colorS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($color as $key) : ?>
                        <option value="<?= $key->id_col ?>"><?= $key->desc_col ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="color_err"></div>  
            </p>
            <p>
                <label>Tipo de Componente
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="componenteS" name="componenteS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($componente as $key) : ?>
                        <option value="<?= $key->id_tp_comp ?>"><?= $key->mat_tp_comp ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="componente_err"></div>  
            </p>
            <p>
                <label>Unidad Administrativa
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="undAdmS" name="undAdmS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($undAdm as $key) : ?>
                        <option value="<?= $key->id_uni_adm ?>"><?= $key->desc_uni_adm ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="undAdm_err"></div>  
            </p>
            <p>
                <label>Trabajador a Cargo
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="trabajadorS" name="trabajadorS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($trabajador as $key) : ?>
                        <option value="<?= $key->id_trb ?>"><?= $key->nombre_trb ?> <?= $key->apellido_trb ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="trabajador_err"></div>  
            </p>
            <p>
                <label>Ciudad
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="ciudadS" name="ciudadS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($ciudad as $key) : ?>
                        <option value="<?= $key->id_ciu ?>"><?= $key->desc_ciu ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="ciudad_err"></div>  
            </p>
            <p>
                <label>Municipio
                    <span class="obligatorio">*</span>
                </label>
                <br>
                <select id="municipioS" name="municipioS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($municipio as $key) : ?>
                        <option value="<?= $key->id_mun ?>"><?= $key->desc_mun ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="municipio_err"></div>  
            </p>
            <p>
                <label>Parroquia
                    <span  class="obligatorio">*</span>
                </label>
                <br>
                <select id="parroquiaS" name="parroquiaS" class="form-selects">
                    <option selected>-Seleccionar-</option>
                    <?php foreach ($parroquia as $key) : ?>
                        <option value="<?= $key->id_parr ?>"><?= $key->desc_parr ?></option>
                    <?php endforeach; ?>
                </select>
                <div id="parroquia_err"></div>  
            </p>

            <button type="submit" class="submit" id="enviar">
                <p>Enviar</p>
            </button>

            <p class="aviso">
                <span class="obligatorio"> * </span>los campos son obligatorios.
            </p>
            <div id="create_err"></div>  

        </form>
    </div>
</div>