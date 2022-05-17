<?php
function fromUpdate_rules(){
    return array(
        
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
               

    );
}
