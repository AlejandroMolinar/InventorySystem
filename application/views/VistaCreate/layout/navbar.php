<?php
/* ===========================================================================================
    Archivo: navbar.php
    Descripcion: Barra Superir HTML para la Creación de un nuevo Bienes.
    Fecha de Creacion: 1-05-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<div class="navbar">
    <ul class="nav bg-dark" id="navbar">
        <li class="nav-item">
            <?php if ($this->session->range == 1) : ?>
                <button type="button" class="btn btn-outline-danger" 
                onclick="window.location.href=' <?= base_url("controlInv") ?>'">
                    Regresar
                </button>
            <?php endif; ?>
        </li>
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
    </ul>
</div>