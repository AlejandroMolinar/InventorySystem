<?php
/* ===========================================================================================
    Archivo: FeorUpdate.php
    Descripcion: Formulario para la Actualización de un Bien.
    Fecha de Creacion: 17-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="contact_form">
    <div class="formulario">
        <h1>Actualizar Usuario</h1>

        <form id="userUpdate" action="guardarUser" method="post">
            <p>
                <label>Id
                    <span class="obligatorio">*</span>
                </label>
                <input id="idU" name="idU" type="text" class="form-inputs" value="<?= $id ?>" readonly>
            <div id="id_err"></div>

            </p>
            <p>
                <label>Rango
                    <span class="obligatorio">*</span>
                </label>
                <select id="rangoU" name="rangoU" class="form-selects">
                    <option <?= ($rango == 1) ? 'selected' : '' ?> value="1">
                        1~Admin</option>
                    <option <?= ($rango == 2) ? 'selected' : '' ?> value="2">
                        2~User</option>
                </select>
            <div id="rango_err"></div>

            </p>

            <p>
                <label>Email
                    <span class="obligatorio">*</span>
                </label>
                <input id="emailU" name="emailU" type="text" class="form-inputs" value="<?= $email ?>"
                onfocus="javascript:select();">
            <div id="email_err"></div>
            </p>

            <p>
                <label>Nombre
                    <span class="obligatorio">*</span>
                </label>
                <input id="nombreU" name="nombreU" type="text" class="form-inputs" value="<?= $nombre ?>"
                onfocus="javascript:select();">
            <div id="nombre_err"></div>
            </p>

            <p>
                <label>Apellido
                    <span class="obligatorio">*</span>
                </label>
                <input id="apellidoU" name="apellidoU" type="text" class="form-inputs" value="<?= $apellido ?>"
                onfocus="javascript:select();">
            <div id="apellido_err"></div>
            </p>
            <p>
                <label>C&eacutedula
                    <span class="obligatorio">*</span>
                </label>
                <input id="cedulaU" name="cedulaU" type="text" class="form-inputs" value="<?= $cedula ?>"
                onfocus="javascript:select();">
            <div id="cedula_err"></div>
            </p>
            <p>
                <label>Unidad Administrativa
                    <span class="obligatorio">*</span>
                </label>
                <select id="undAdmU" name="undAdmU" class="form-selects">
                    <?php foreach ($areaAdmSelect as $key) : ?>
                    <?php if ($key->id_uni_adm == $areaAdm) : ?>
                    <option selected value="<?= $key->id_uni_adm ?>">
                        <?= $key->desc_uni_adm ?>
                    </option>
                    <?php else : ?>
                    <option value="<?= $key->id_uni_adm ?>">
                        <?= $key->desc_uni_adm ?>
                    </option>
                    <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="undAdm_err"></div>
            </p>
            <p>
                <label>Status
                    <span class="obligatorio">*</span>
                </label>
                <select id="statusU" name="statusU" class="form-selects">
                    <option <?= ($status == 0) ? 'selected' : '' ?> value="0">
                        0~Activo</option>
                    <option <?= ($status == 1) ? 'selected' : '' ?> value="1">
                        1~Inactivo</option>
                </select>
            <div id="status_err"></div>
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