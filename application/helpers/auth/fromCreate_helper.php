<?php
function fromCreate_rules(){
    return array(
        array(
            'field' => 'marcaS',
            'label' => 'Marca',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'modeloS',
            'label' => 'Modelo',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'matches' => ' Debe Seleccionar un elemento',

            ),
        ),
        array(
            'field' => 'serialAdd',
            'label' => 'Serial',
            'rules' => 'required|trim',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'numBienS',
            'label' => 'N&uacutemero de Bien',
            'rules' => 'required|numeric|min_length[4]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'numeric' => 'El %s es un Campo Num&eacuterico',
                'min_length' => 'El %s debe tener M&iacutenimo 4 d&iacutegitos'
            ),
        ),
        array(
            'field' => 'colorS',
            'label' => 'Color',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'componenteS',
            'label' => 'Tipo Componente',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'undAdmS',
            'label' => 'Unidad Administrativa',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'trabajadorS',
            'label' => 'Trabajadores',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'ciudadS',
            'label' => 'Ciudad',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'municipioS',
            'label' => 'Municipio',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),
        array(
            'field' => 'parroquiaS',
            'label' => 'Parriquia',
            'rules' => 'required|matches[-Seleccionar-]',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'matches' => ' Debe Seleccionar un elemento',
            ),
        ),

    );
}
