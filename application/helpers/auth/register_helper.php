<?php
function register_rules() {    
    return array(
        array(
                'field' => 'txt_nom',
                'label' => 'Nombres',
                'rules' => 'required | alpha_numeric_spaces',
				'errors' => array(
					'required' => 'Los %s son Invalido.',
					'alpha_numeric_spaces' => 'Los %s no pueden Contener Simbolos',
                ),
        ),
        array(
                'field' => 'txt_ape',
                'label' => 'Apellidos',
                'rules' => 'required | alpha_numeric_spaces',
				'errors' => array(
					'required' => 'Los %s son Invalido.',
					'alpha_numeric_spaces' => 'Los %s no pueden Contener Simbolos',
                ),
        ),
        array(
                'field' => 'txt_ced',
                'label' => 'Cedula',
                'rules' => 'required | numeric',
				'errors' => array(
					'required' => 'La %s es invalido.',
					'numeric' => 'La %s es un Campo Numerico',
                ),
        ),
        array(
                'field' => 'txt_are',
                'label' => 'Area asignada',
                'rules' => 'required | alpha_numeric_spaces',
				'errors' => array(
					'required' => 'El %s es invalido.',
					'alpha_numeric_spaces' => 'El %s no puede contener simbolos',
                ),
        ),
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
                'rules' => 'required | trim',
				'errors' => array(
					'required' => 'La %s es invalido.',
                ),
        ),
        array(
                'field' => 'txt_rep_pas',
                'label' => 'Confirmacion de Contraseña',
                'rules' => 'required | trim',
				'errors' => array(
					'required' => 'La %s es invalido.',
                ),
        ),
        
);
}