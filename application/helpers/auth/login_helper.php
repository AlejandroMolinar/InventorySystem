<?php

function main_menu(){
    return array('urlBase' => base_url());
}

function login_rules(){
    return array(
        array(
            'field' => 'txt_ema_r',
            'label' => 'Correo',
            'rules' => 'required | trim',
            'errors' => array(
                'required' => 'El %s es invalido.',
            ),
        ),
        array(
            'field' => 'txt_pas_r',
            'label' => 'Contraseña',
            'rules' => 'required | trim | min_length[5]',
            'errors' => array(
                'required' => 'La %s es invalido.',
                'min_length[5]' => 'La %s debe tener minimo 5 caracteres.'
            ),
        ),
    );
}

