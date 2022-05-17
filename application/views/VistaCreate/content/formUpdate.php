<div class="contact_form">
    <div class="formulario">
        <h1>Crear Nuevo Bien</h1>

        <!-- 
            $dataInv->id_inv_bien;	
            $dataInv->cod_marc;		
            $dataInv->id_mod_bien;	
            $dataInv->serial_bien;	
            $dataInv->id_num_bien;	
            $dataInv->id_clr_bien;	
            $dataInv->id_tpc_bien;	
            $dataInv->id_adm_bien;	
            $dataInv->id_trb_bien;	
            $dataInv->id_ciu_bien;	
            $dataInv->id_mun_bien;	
            $dataInv->id_parr_bien;	
            $dataInv->fec_crt_inv;	
            $dataInv->hor_crt_inv;	
            $dataInv->status; 
        -->

        <form id="formUpdate" action="updateSave" method="post">
            <p>
                <label>Id
                    <span class="obligatorio">*</span>
                </label>
                <input id="idS" name="idS" type="text" class="form-inputs" value="<?= $dataInv->id_inv_bien ?>" disabled>
            <div id="id_err"></div>

            </p>
            <p>
                <label>Marca
                    <span class="obligatorio">*</span>
                </label>
                <select id="marcaS" name="marcaS" class="form-selects">
                    <?php foreach ($marca as $key) : ?>
                        <?php if ($key->cod_marc == $dataInv->cod_marc) : ?>
                            <option selected value="<?= $key->cod_marc ?>"><?= $key->den_com_marc ?></option>
                        <?php else : ?>
                            <option value="<?= $key->cod_marc ?>"><?= $key->den_com_marc ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="marca_err"></div>

            </p>

            <p>
                <label>Modelo
                    <span class="obligatorio">*</span>
                </label>
                <select id="modeloS" name="modeloS" class="form-selects">
                    <?php foreach ($modelo as $key) : ?>
                        <?php if ($key->id_mod  == $dataInv->id_mod_bien) : ?>
                            <option selected value="<?= $key->id_mod ?>"><?= $key->den_mod ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_mod ?>"><?= $key->den_mod ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="modelo_err"></div>
            </p>

            <p>
                <label>Serial
                    <span class="obligatorio">*</span>
                </label>
                <input id="serialS" name="serialS" type="text" class="form-inputs" value="<?= $dataInv->serial_bien ?>">
            <div id="serial_err"></div>
            </p>

            <p>
                <label>N&uacutemero de Bien
                    <span class="obligatorio">*</span>
                </label>
                <input id="numBienS" name="numBienS" type="text" class="form-inputs" value="<?= $numBien ?>">
            <div id="numBien_err"></div>
            </p>

            <p>
                <label>Color
                    <span class="obligatorio">*</span>
                </label>
                <select id="colorS" name="colorS" class="form-selects">
                    <?php foreach ($color as $key) : ?>
                        <?php if ($key->id_col == $dataInv->id_clr_bien) : ?>
                            <option selected value="<?= $key->id_col ?>"><?= $key->desc_col ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_col ?>"><?= $key->desc_col ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="color_err"></div>
            </p>
            <p>
                <label>Tipo de Componente
                    <span class="obligatorio">*</span>
                </label>
                <select id="componenteS" name="componenteS" class="form-selects">
                    <?php foreach ($componente as $key) : ?>
                        <?php if ($key->id_tp_comp == $dataInv->id_tpc_bien) : ?>
                            <option value="<?= $key->id_tp_comp ?>"><?= $key->mat_tp_comp ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_tp_comp ?>"><?= $key->mat_tp_comp ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="componente_err"></div>
            </p>
            <p>
                <label>Unidad Administrativa
                    <span class="obligatorio">*</span>
                </label>
                <select id="undAdmS" name="undAdmS" class="form-selects">
                    <?php foreach ($undAdm as $key) : ?>
                        <?php if ($key->id_uni_adm == $dataInv->id_adm_bien) : ?>
                            <option selected value="<?= $key->id_uni_adm ?>"><?= $key->desc_uni_adm ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_uni_adm ?>"><?= $key->desc_uni_adm ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="undAdm_err"></div>
            </p>
            <p>
                <label>Trabajador a Cargo
                    <span class="obligatorio">*</span>
                </label>
                <select id="trabajadorS" name="trabajadorS" class="form-selects">
                    <?php foreach ($trabajador as $key) : ?>
                        <?php if ($key->id_trb == $dataInv->id_trb_bien) : ?>
                            <option selected value="<?= $key->id_trb ?>"><?= $key->nombre_trb ?> <?= $key->apellido_trb ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_trb ?>"><?= $key->nombre_trb ?> <?= $key->apellido_trb ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="trabajador_err"></div>
            </p>
            <p>
                <label>Ciudad
                    <span class="obligatorio">*</span>
                </label>
                <select id="ciudadS" name="ciudadS" class="form-selects">
                    <?php foreach ($ciudad as $key) : ?>
                        <?php if ($key->id_ciu == $dataInv->id_ciu_bien) : ?>
                            <option selected value="<?= $key->id_ciu ?>"><?= $key->desc_ciu ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_ciu ?>"><?= $key->desc_ciu ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="ciudad_err"></div>
            </p>
            <p>
                <label>Municipio
                    <span class="obligatorio">*</span>
                </label>
                <select id="municipioS" name="municipioS" class="form-selects">
                    <?php foreach ($municipio as $key) : ?>
                        <?php if ($key->id_mun == $dataInv->id_mun_bien) : ?>
                            <option selected value="<?= $key->id_mun ?>"><?= $key->desc_mun ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_mun ?>"><?= $key->desc_mun ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="municipio_err"></div>
            </p>
            <p>
                <label>Parroquia
                    <span class="obligatorio">*</span>
                </label>
                <select id="parroquiaS" name="parroquiaS" class="form-selects">
                    <?php foreach ($parroquia as $key) : ?>
                        <?php if ($key->id_parr == $dataInv->id_parr_bien) : ?>
                            <option selected value="<?= $key->id_parr ?>"><?= $key->desc_parr ?></option>
                        <?php else : ?>
                            <option value="<?= $key->id_parr ?>"><?= $key->desc_parr ?></option>
                        <?php endif; ?>
                    <?php endforeach; ?>
                </select>
            <div id="parroquia_err"></div>
            </p>

            <p>
                <label>Status
                    <span class="obligatorio">*</span>
                </label>
                <select id="statusS" name="statusS" class="form-selects">
                    <option <?= ($dataInv->status == 0) ? 'selected' : '' ?>>
                        0~Activo</option>
                    <option <?= ($dataInv->status == 1) ? 'selected' : '' ?>>
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