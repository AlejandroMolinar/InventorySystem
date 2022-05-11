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
        
    </ul>
</div>