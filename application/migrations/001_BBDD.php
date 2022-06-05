<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Migration_BBDD extends CI_Migration{

        public function up(){
                $this->dbforge->add_field(array(
                        'id_trb' => array(
                                'type' => 'INTEGER',
                                'constraint' => 10,
                                'unsigned' => TRUE,
                                'auto_increment' => TRUE
                        ),
                        'id_tp_trb' => array(
                                'type' => 'INTEGER',
                                'constraint' => 10
                        ),
                        'id_adm_trb' => array(
                                'type' => 'INTEGER',
                                'constraint' => 10
                        ),
                        'email_trb' => array(
                                'type' => 'character varying',
                                'constraint' => '100',
                                'null' => TRUE
                        ), 
                        'nombre_trb' => array(
                                'type' => 'character varying',
                                'constraint' => '100'
                        ),
                        'apellido_trb' => array(
                                'type' => 'character varying',
                                'constraint' => '100'
                        ),
                        'cedula_trb' => array(
                                'type' => 'character varying',
                                'constraint' => '100'
                        ),
                        'password_trb' => array(
                                'type' => 'character varying',  
                                'constraint' => '100',
                                'null' => TRUE
                        ),
                        'fecha_crt_trb' => array(
                                'type' => 'date',  
                                'constraint' => '100',
                        ),
                        'hora_crt_trb' => array(
                                'type' => 'time with time zone',  
                                'constraint' => '100',
                        ),
                        'status' => array(
                                'type' => 'smallint',  
                                'constraint' => '100',
                                'default' => 0
                        )
                ));
                $this->dbforge->add_key('id_trb', TRUE);
                $this->dbforge->create_table('trabajadores');
        }

        public function down(){
                $this->dbforge->drop_table('trabajadores');
        }
}
