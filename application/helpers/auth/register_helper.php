<?php
function register_rules(){
        return array(
                array(
                        'field' => 'txt_nom_r',
                        'label' => 'Nombres',
                        'rules' => 'required|alpha_numeric_spaces',
                        'errors' => array(
                                'required' => 'Los %s son Requeridos.',
                                'alpha_numeric_spaces' => 'Los %s no pueden Contener Simbolos',
                        ),
                ),
                array(
                        'field' => 'txt_ape_r',
                        'label' => 'Apellidos',
                        'rules' => 'required|alpha_numeric_spaces',
                        'errors' => array(
                                'required' => 'Los %s son Requeridos.',
                                'alpha_numeric_spaces' => 'Los %s no pueden Contener Simbolos',
                        ),
                ),
                array(
                        'field' => 'txt_ced_r',
                        'label' => 'Cedula',
                        'rules' => 'required|numeric',
                        'errors' => array(
                                'required' => 'La %s es Requerida.',
                                'numeric' => 'La %s es un Campo Numerico',
                        ),
                ),
                array(
                        'field' => 'opcion_area_r',
                        'label' => 'Area asignada',
                        'rules' => 'required',
                        'errors' => array(
                                'required' => 'El %s es Requerida.',
                        ),
                ),
                array(
                        'field' => 'txt_ema_r',
                        'label' => 'Correo',
                        'rules' => 'required|trim',
                        'errors' => array(
                                'required' => 'El %s es Requerido.',
                        ),
                ),
                array(
                        'field' => 'txt_pas_r',
                        'label' => 'Clave',
                        'rules' => 'required|trim',
                        'errors' => array(
                                'required' => 'La %s es Requerida.',
                        ),
                ),
                array(
                        'field' => 'txt_rep_pas',
                        'label' => 'Confirmacion de Clave',
                        'rules' => 'required|trim',
                        'errors' => array(
                                'required' => 'La %s es Requerida.',
                        ),
                ),

        );
}
