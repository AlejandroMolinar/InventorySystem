<?php
/* ===========================================================================================
    Archivo: sidebar.php
    Descripcion: Barra Vertical Izquierda HTML para el Control de Inventario de Bienes.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div id="sidebar" class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark">
    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
        <span class="fs-4">&aacutereas</span>
        
    </a>
    <hr>
    <ul class="navs nav-pill flex-column mb-auto">
        <li class="nav-item">
            <a href="" class="nav-links active" aria-current="page">
                Desarrollo de Software
            </a>
        </li>
        <li>
            <a href="" class="nav-links text-white">
                Telecom
            </a>
        </li>
        <li>
            <a href="" class="nav-links text-white">
                Servidores
            </a>
        </li>
        <li>
            <a href="" class="nav-links text-white">
                Soporte T&eacutecnico
            </a>
        </li>
        <li>
            <a href="" class="nav-links text-white">
                Cobro Pasaje
            </a>
        </li>
    </ul>
    <hr>
    <div class="dropdown">
        <a href="logout" class="d-flex align-items-center text-white text-decoration-none" id="dropdownUser1">
            <strong>Cerrar Sesi&oacuten</strong>
        </a>
    </div>
</div>