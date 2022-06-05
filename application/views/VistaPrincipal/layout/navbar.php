<?php
/* ===========================================================================================
    Archivo: navbar.php
    Descripcion: Barra Superir HTML para el Control de Inventario de Bienes.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="navbar">
    <ul class="nav justify-content-end bg-dark" id="navbar">
        <li class="nav-item">
            <a class="nav-link disabled">
                <?= ($this->session->range != 1) ? 'user' : 'admin' ?>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link disabled">
                <?= $this->session->nombre_user ?>
                <?= $this->session->apellido_user ?>
            </a>
        </li>
        <li class="nav-item">
            <?php if ($this->session->range == 1) : ?>
                <button type="button" class="btn btn-outline-success" 
                onclick="window.location.href=' <?= base_url("newCreate") ?>'">
                    Agregar
                </button>
            <?php endif; ?>
        </li>
    </ul>
</div>