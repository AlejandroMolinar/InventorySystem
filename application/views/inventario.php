<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control de Inventario</title>

    <link rel="stylesheet" href="<?= base_url('public/css/style_inventario.css')?>" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  
</head>

<body>
    <ul class="nav justify-content-end bg-dark">
        <li class="nav-item">
            <a class="nav-link disabled">
                <?= $this->session->range != 1 ? 'user' : 'admin'?>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled">
            <?= $this->session->nombre_user?> 
            <?= $this->session->apellido_user?> 
            </a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled">
              Control de Inventario
            </a>
        </li>
    </ul>

    <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 260px; height: 575px;">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
            <span class="fs-4">&aacutereas</span>
                <svg onclick="" xmlns="http://www.w3.org/2000/svg" width="22" height="22" fill="currentColor" id="cerrar" class="bi bi-x-square" viewBox="0 0 16 16">
                    <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                    <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                </svg>
        </a>
        <hr>
        <ul class="nav nav-pills flex-column mb-auto">
            <li class="nav-item">
                <a href="#" class="nav-link active" aria-current="page">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#home" />
                    </svg>
                    Desarrollo de Software
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#speedometer2" />
                    </svg>
                    Telecom
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#table" />
                    </svg>
                    Servidores
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#grid" />
                    </svg>
                    Soporte T&eacutecnico
                </a>
            </li>
            <li>
                <a href="#" class="nav-link text-white">
                    <svg class="bi me-2" width="16" height="16">
                        <use xlink:href="#people-circle" />
                    </svg>
                    Cobro Pasaje
                </a>
            </li>
        </ul>
        <hr>
        <div class="dropdown">
            <a href="logout" class="d-flex align-items-center text-white text-decoration-none"
                id="dropdownUser1">
                <strong>Cerrar Sesi&oacuten</strong>
            </a>
        </div>
    </div>
    </div>
    
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript" src="<?= base_url('public/js/auth/control_Inventario.js')?>"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>

</html>