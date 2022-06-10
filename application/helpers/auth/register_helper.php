<?php
/* ===========================================================================================
    Archivo: ControlUsuarios.php
    Descripcion:  Validación para el Formulario de Registro.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>
<?php
function register_rules()
{
        return array(
                array(
                        'field' => 'txt_ema_r',
                        'label' => 'Email',
                        'rules' => 'required|trim',
                        'errors' => array(
                                'required' => 'El %s es Requerido.',
                        ),
                ),
                array(
                        'field' => 'txt_nom_r',
                        'label' => 'Nombre',
                        'rules' => 'required|alpha_numeric_spaces|min_length[3]|trim',
                        'errors' => array(
                                'required' => 'El %s es Requerido.',
                                'alpha_numeric_spaces' => 'El %s no puede Contener S&iacutembolos',
                                'min_length' => 'El %s debe tener M&iacutenimo 3 d&iacutegitos'
                        ),
                ),
                array(
                        'field' => 'txt_ape_r',
                        'label' => 'Apellido',
                        'rules' => 'required|alpha_numeric_spaces|min_length[3]|trim',
                        'errors' => array(
                                'required' => 'El %s es Requerido.',
                                'alpha_numeric_spaces' => 'El %s no puede Contener S&iacutembolos',
                                'min_length' => 'El %s debe tener M&iacutenimo 3 d&iacutegitos'
                        ),
                ),
                array(
                        'field' => 'txt_ced_r',
                        'label' => 'C&eacutedula',
                        'rules' => 'required|numeric|min_length[7]|trim',
                        'errors' => array(
                                'required' => 'La %s es Requerida.',
                                'numeric' => 'La %s es un Campo Num&eacuterico',
                                'min_length' => 'La %s debe tener M&iacutenimo 7 d&iacutegitos'
                        ),
                ),
                array(
                        'field' => 'opcion_area_r',
                        'label' => '&aacuterea asignada',
                        'rules' => 'required',
                        'errors' => array(
                                'required' => 'El %s es Requerida.',
                        ),
                ),
                array(
                        'field' => 'txt_pas_r',
                        'label' => 'Clave',
                        'rules' => 'required|trim|min_length[5]',
                        'errors' => array(
                                'required' => 'La %s es invalida.',
                                'min_length' => 'La %s debe tener m&iacutenimo 5 caracteres.',
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
