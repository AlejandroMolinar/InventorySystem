<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Login</title>
    <!--Import Google Icon Font-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="../SystemInventory/public/css/materialize.min.css"  media="screen,projection"/>
    <link type="text/css" rel="stylesheet" href="../SystemInventory/public\css\style.css"/>
    

    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  </head>
  <body ng-app="mainModule" ng-controller="mainController">
       <!--JavaScript at end of body for optimized loading-->
    <script type="text/javascript" src="./SystemInventory/public/js/materialize.min.js"></script>

    <div id="login-page" class="row" >
      <div class="col s12 z-depth-6 card-panel">
        <form class="login-form" action="" method="post">
          <div class="row"></div>
          <div class="row">
            <div class="input-field col s12">
              <i class="material-icons prefix">mail_outline</i>
              <input class="validate" id="email" type="email" />
              <label for="email" data-error="wrong" data-success="right"
                >Email</label
              >
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <i class="material-icons prefix">lock_outline</i>
              <input id="password" type="password" />
              <label for="password">Password</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12 m12 l12 login-text">
              <input type="checkbox" id="remember-me" />
              <label for="remember-me">Remember me</label>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s12">
              <a href="#" class="btn waves-effect waves-light col s12">Login</a>
            </div>
          </div>
          <div class="row">
            <div class="input-field col s6 m6 l6">
              <p class="margin medium-small"><a href="#">Register Now!</a></p>
            </div>
            <div class="input-field col s6 m6 l6">
              <p class="margin right-align medium-small">
                <a href="#">Forgot password?</a>
              </p>
            </div>
          </div>
        </form>
      </div>
    </div>

    
  </body>
</html>
