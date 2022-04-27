<?php
/* ===========================================================================================
    Archivo: Login.php
    Descripcion: vista principal de Login.
    Fecha de Creacion: 12-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <meta charset="UTF-8">
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link rel="stylesheet" href="<?= base_url('public/materialize/css/materialize.min.css')?>"  media="screen,projection"/>
    <link rel="stylesheet" href="<?= base_url('public/css/style.css')?>"/>
    

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>
  <body ng-app="mainModule" ng-controller="mainController">
    
    <div class="login-wrap">
      <div class="foot-lnk">
        <label class="msgtxt"><?= isset($msg) ? $msg : '' ?></label>
        <?php echo validation_errors(); ?>
      </div>
      <div class="login-html">
        <input id="tab-1" type="radio" name="tab" class="sign-in" checked ><label for="tab-1" class="tab">Sign In</label>
        <input id="tab-2" type="radio" name="tab" class="sign-up" onclick="javascript:form_data.reset();">
        <label for="tab-2" class="tab">Sign Up</label>
        <form id="form_data" class="login-form" action="logadd" method="post">
          
          <div class="sign-in-htm">
            <div class="group">
              <label for="lab_ema" class="label">Correo</label>
              <input id="txt_ema_l" name="txt_ema_l" type="email" class="input validate" onfocus="javascript:select();" value="">
              <span class="helper-text" data-error="Correo Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_pas" class="label">Contraseña</label>
              <input id="txt_pas_l" name="txt_pas_l" type="password" class="input" 
              data-type="password" onfocus="javascript:select();">
            </div>
            <br>
            <div class="group">
              <input id="chk_kpm" name="chk_kpm" type="checkbox" class="check" checked>
              <label for="lab_kpm"><span class="icon"></span>Recordar Usuario</label>
            </div>
            <div class="group">
              <input type="submit" class="button" value="Ingresar">
            </div>
            <div class="hr"></div>
            <div class="foot-lnk">
              <a href="">Olvido la contraseña?</a>
            </div>
          </div>
          <div class="sign-up-htm">
            <div class="group">
              <label for="lab_nom" class="label">Nombres</label>
              <input id="txt_nom" name="txt_nom" type="text" class="input validate" onfocus="javascript:select();">
              <span class="helper-text" data-error="Nombres Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_ape" class="label">Apellidos</label>
              <input id="txt_ape" name="txt_ape" type="text" class="input validate" onfocus="javascript:select();">
              <span class="helper-text" data-error="Apellidos Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_ced" class="label">Cedula</label>
              <input id="txt_ced" name="txt_ced" type="text" class="input validate" onfocus="javascript:select();">
              <span class="helper-text" data-error="Cedula Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_are" class="label">Area</label>
              <input id="txt_are" name="txt_are" type="text" class="input validate" onfocus="javascript:select();">
              <span class="helper-text" data-error="Area Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_ema" class="label">Correo</label>
              <input id="txt_ema_r" name="txt_ema_r" type="Email" class="input validate" onfocus="javascript:select();">
              <span class="helper-text" data-error="Correo Invalido"></span>
            </div>
            <div class="group">
              <label for="lab_pas" class="label">Contraseña</label>
              <input id="txt_pas_r"  name="txt_pas_r" type="password" class="input validate" data-type="password" onfocus="javascript:select();">
              <span class="helper-text" data-error=""></span>
            </div>
            <div class="group">
              <label for="lab_rep_pas" class="label">Repetir Contraseña</label>
              <input id="txt_rep_pas" name="txt_rep_pas" type="password" class="input validate" data-type="password" 
                onfocus="javascript:select();">
              <span class="helper-text" data-error=""></span>
            </div>
            <div class="group">
              <input type="submit" class="button" value="Ingresar">
            </div>
            <div class="hr"></div>
            <div class="foot-lnk">
              <label for="tab-1">Already Member?</a>
            </div>
          </div>
        </form>
      </div>
    </div>

    <script type="text/javascript" src="<?= base_url('public/materialize/js/materialize.min.js')?>"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="<?= base_url('public/js/auth/login.js')?>"></script>
  </body>
</html>
