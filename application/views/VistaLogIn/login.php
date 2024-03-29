<?php
/* ===========================================================================================
    Archivo: login.php
    Descripcion: vista principal de Login.
    Fecha de Creacion: 12-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <link
        href="data:image/x-icon;base64,AAABAAEAEBAAAAEACABoBQAAFgAAACgAAAAQAAAAIAAAAAEACAAAAAAAAAEAAAAAAAAAAAAAAAEAAAAAAAAAAAAAPh7cADMRpgA/H9EAQCG7AD8fyQBBIrAAQCC+AEEjpQA8HLkAQiaMAD8f0gA+HeAAPyDHACcEvABAIbwARShuAEEisQBAIL8AQCG0AEEjpgBCJJsAQiWQAD8f0wA+HeEAQyaFACkLkAA/IMgAPx7WAEMliABAIb0AQSKyAEAgwAD+/v4AQSOnAEAhtQBBIqoAQiScAEIlkQA+HeIAQyaGADIQxQA/HtcAPx/MAEAgwQBAIbYAQSKrAEIknQBCJZIAQiOgAEMmhwCPgdcAPx/NAC4buABAIMIAQSK0AEEirABBI6EAQyaIAEMliwA/H84AW0a6AEAgwwBAIbgAQSKtAEEjogBCI6IA/f38AEIklwBCJYwAQyWMAP///wBAIMQAQCG5ADYWpwD+/f0AQiSYAD4e2wBDJY0APx/IAEEirwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABY7AAAAAAAAAAAAAAAAJ0wwCh0QAAAAAAAAAAAAJzklRDBFMjoAAAAAAAAAJ0AiQS9EMEY6GQAAAAAAJyMfOBRBJUQwRjIoAAAAJywELRECMzMaRDBOKDEAJydIEg8tR0tDRxVEMEYxMScnJ0gSBDNLITNCL0wmMTEnJycFSCAJIUtKFEIlRDExJycnPE9INSEhPSQIQhUxMScnJxc8BUdHR0dQLhQxMTEnJwEqCzwzIUczE1AkCDExJycYTSoLNCkOB0k3BiQxMScnJwxNHAs0Gz4PPzdQMTEnJycnDE0cCzQbPh4/NzExACcnJycMTRwDKw02Hi4xAP5/AAD4HwAA8A8AAOAHAADAAwAAgAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIABAAA="
        rel="icon" type="image/x-icon" />
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="<?= base_url('public/materialize/css/materialize.min.css') ?>"
        media="screen,projection" />
    <link rel="stylesheet" href="<?= base_url('public/css/style_login.css') ?>" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

</head>

<body ng-app="mainModule" ng-controller="mainController">

    <div class="login-wrap">

        <div class="login-html">
            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign
                In</label>
            <input id="tab-2" type="radio" name="tab" class="sign-up" onclick="javascript:form_data.reset();">
            <label for="tab-2" class="tab">Sign Up</label>
            <form id="form_data" class="login-form" action="logadd" method="post">

                <div class="sign-in-htm">

                    <div class="group" id="email_si">
                        <label for="lab_ema" class="label">Correo</label>
                        <input id="txt_ema_l" name="txt_ema_l" type="email" class="input validate"
                            onfocus="javascript:select();" autocomplete="TRUE">
                        <div id="email_err"></div>
                    </div>

                    <div class="group" id="pass_si">
                        <label for="lab_pas" class="label">Clave</label>
                        <input id="txt_pas_l" name="txt_pas_l" type="password" class="input validate"
                            data-type="password" onfocus="javascript:select();">
                        <div id="pass_err"></div>

                    </div>
                    <br>

                    <div class="group">
                        <input type="submit" class="button" value="Ingresar">
                    </div>

                    <div class="foot-lnk" id="err_login">
                    </div>

                    <div class="hr"></div>

                </div>

                <div class="sign-up-htm">

                    <div class="group" id="nom_sp">
                        <label for="lab_nom" class="label">Nombres</label>
                        <input id="txt_nom" name="txt_nom_r" type="text" class="input validate"
                            onfocus="javascript:select();">
                        <div id="nom_err"></div>

                    </div>

                    <div class="group" id="apel_sp">
                        <label for="lab_ape" class="label">Apellidos</label>
                        <input id="txt_ape" name="txt_ape_r" type="text" class="input validate"
                            onfocus="javascript:select();">
                        <div id="apel_err"></div>

                    </div>

                    <div class="group" id="ced_sp">
                        <label for="lab_ced" class="label">C&eacutedula</label>
                        <input id="txt_ced" name="txt_ced_r" type="text" class="input validate"
                            onfocus="javascript:select();">
                        <div id="ced_err"></div>

                    </div>

                    <div class="group" id="area_sp">
                        <label for="lab_ced" class="label">&aacuterea</label>
                        <select class="input_area" id="opcion_area_r" name="opcion_area_r">
                            <option disabled selected>-Seleccionar-</option>
                            <?php foreach ($undAdm as $key) : ?>
                            <option value="<?= $key->id_uni_adm ?>"><?= $key->desc_uni_adm ?></option>
                            <?php endforeach; ?>
                        </select>
                        <div id="are_err"></div>

                    </div>

                    <div class="group" id="email_sp">
                        <label for="lab_ema" class="label">Correo</label>
                        <input id="txt_ema_r" name="txt_ema_r" type="Email" class="input validate"
                            onfocus="javascript:select();">
                        <div id="ema_err"></div>

                    </div>

                    <div class="group" id="pass_sp">
                        <label for="lab_pas" class="label">Clave</label>
                        <input id="txt_pas_r" name="txt_pas_r" type="password" class="input validate"
                            data-type="password" onfocus="javascript:select();">
                        <div id="pas_err"></div>

                    </div>

                    <div class="group" id="cfpass_sp">
                        <label for="lab_rep_pas" class="label">Repetir Clave</label>
                        <input id="txt_rep_pas" name="txt_rep_pas" type="password" class="input validate"
                            data-type="password" onfocus="javascript:select();">
                        <div id="cfpass_err"></div>

                    </div>
                    <br>

                    <div class="group">
                        <input type="submit" class="button" value="Registrar">
                    </div>

                    <div class="foot-lnk" id="err_register">

                    </div>


                    <div class="hr"></div>
                </div>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="<?= base_url('public/materialize/js/materialize.min.js') ?>"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="<?= base_url('public/js/auth/login.js') ?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>

</body>

</html>