<?php
function fromCreate_rules()
{
    return array(

        array(
            'field' => 'marcaS',
            'label' => 'Marca',
            'rules' => 'required',
            'errors' => array(
                'required' => 'La %s es Requerida.',
            ),
        ),
        array(
            'field' => 'modeloS',
            'label' => 'Modelo',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'serialS',
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
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'componenteS',
            'label' => 'Tipo Componente',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'undAdmS',
            'label' => 'Unidad Administrativa',
            'rules' => 'required',
            'errors' => array(
                'required' => 'La %s es Requerida.',
            ),
        ),
        array(
            'field' => 'trabajadorS',
            'label' => 'Trabajadores',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'ciudadS',
            'label' => 'Ciudad',
            'rules' => 'required',
            'errors' => array(
                'required' => 'La %s es Requerida.',
            ),
        ),
        array(
            'field' => 'municipioS',
            'label' => 'Municipio',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
        array(
            'field' => 'parroquiaS',
            'label' => 'Parriquia',
            'rules' => 'required',
            'errors' => array(
                'required' => 'La %s es Requerida.',
            ),
        ),

    );
}
