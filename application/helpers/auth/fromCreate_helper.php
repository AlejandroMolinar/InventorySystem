<?php
function fromCreate_rules(){
    return array(
                array(
            'field' => 'serialAdd',
            'label' => 'Serial',
            'rules' => 'required|trim',
            'errors' => array(
                'required' => 'El %s es Requerido.',
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

function fromMarcaS_rules(){
    return array(
        array(
            'field' => 'marcaS',
            'label' => 'Marca',
            'rules' => 'required',
            'errors' => array(
                'required' => 'La %s es Requerida.',
            ),
        ),
    );
}
function fromMarcaI_rules(){
    return array(
        array(
            'field' => 'marcaAdd',
            'label' => 'Marca',
            'rules' => 'required|trim|min_length[2]',
            'errors' => array(
                'required' => 'La %s es Requerida.',
                'min_length' => 'La %s debe tener M&iacutenimo 4 d&iacutegitos'
            ),
        ),
    );
}

function fromModeloS_rules(){
    return array(
        array(
            'field' => 'modeloS',
            'label' => 'Modelo',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
    );
}
function fromModeloI_rules(){
    return array(
        array(
            'field' => 'modeloAdd',
            'label' => 'Modelo',
            'rules' => 'required|trim|min_length[4]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'min_length' => 'El %s debe tener M&iacutenimo 4 d&iacutegitos'
            ),
        ),
    );
}

function fromNumBienS_rules(){
    return array(
        array(
            'field' => 'numBienS',
            'label' => 'N&uacutemero de Bien',
            'rules' => 'required',
            'errors' => array(
                'required' => 'El %s es Requerido.',
            ),
        ),
    );
}
function fromNumBienI_rules(){
    return array(
        array(
            'field' => 'numBienAdd',
            'label' => 'N&uacutemero de Bien',
            'rules' => 'required|numeric|min_length[4]',
            'errors' => array(
                'required' => 'El %s es Requerido.',
                'numeric' => 'El %s es un Campo Num&eacuterico',
                'min_length' => 'El %s debe tener M&iacutenimo 4 d&iacutegitos'
            ),
        ),
    );
}

