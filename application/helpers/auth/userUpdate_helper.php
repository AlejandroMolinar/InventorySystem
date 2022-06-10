<?php
/* ===========================================================================================
    Archivo: ControlUsuarios.php
    Descripcion: Validación para el Formulario de Actualización de Usuarios.
    Fecha de Creacion: 20-04-2022
    Por: Alejandro Molinar.
 * ===========================================================================================
*/
?>

<?php
function userUpdate_rules(){
    return array(
        array(
            'field' => 'emailU',
            'label' => 'Email',
            'rules' => 'required|trim',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'nombreU',
            'label' => 'Nombre',
            'rules' => 'required|alpha_numeric_spaces|min_length[3]|trim',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'alpha_numeric_spaces' => 'El %s no puede Contener S&iacutembolos',
                'min_length' => 'El %s debe tener M&iacutenimo 3 d&iacutegitos'
            ),
        ),
        array(
            'field' => 'apellidoU',
            'label' => 'Apellido',
            'rules' => 'required|alpha_numeric_spaces|min_length[3]|trim',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'alpha_numeric_spaces' => 'El %s no puede Contener S&iacutembolos',
                'min_length' => 'El %s debe tener M&iacutenimo 3 d&iacutegitos'
            ),
        ),
        array(
            'field' => 'cedulaU',
            'label' => 'C&eacutedula',
            'rules' => 'required|numeric|min_length[7]|trim',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'numeric' => 'La %s es un Campo Num&eacuterico',
                'min_length' => 'La %s debe tener M&iacutenimo 7 d&iacutegitos'
            ),
        ),
                      

    );
}
