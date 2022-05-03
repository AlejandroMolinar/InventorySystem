<?php

function main_menu(){
    return array('urlBase' => base_url());
}

function login_rules(){
    return array(
        array(
            'field' => 'txt_ema_l',
            'label' => 'Correo',
            'rules' => 'required|trim',
            'errors' => array(
                'required' => 'El %s es invalido.',
            ),
        ),
        array(
            'field' => 'txt_pas_l',
            'label' => 'Clave',
            'rules' => 'required|trim|min_length[5]',
            'errors' => array(
                'required' => 'La %s es invalida.',
                'min_length' => 'La %s debe tener minimo 5 caracteres.',
            ),
        ),
    );
}

