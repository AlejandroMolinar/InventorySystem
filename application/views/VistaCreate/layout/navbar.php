<div class="navbar">
    <ul class="nav bg-dark" id="navbar">
        <li class="nav-item">
            <?php if ($this->session->range == 1) : ?>
                <button type="button" class="btn btn-outline-danger">
                    <a style="color: white; width: 20px;"
                    href="<?= base_url('controlInv') ?>">Regresar</a>
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