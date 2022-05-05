<ul class="nav justify-content-end bg-dark">
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
            <button type="button" class="btn btn-outline-success <?= ($this->session->range != 1) ? 'disabled' : '' ?>" >
            Agregar
        </button>
    </li>
</ul>