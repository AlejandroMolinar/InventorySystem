<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function read($user, $password){
        $data_log= $this->db->get_where('trabajador', array('email_trb' => $user , 'password_trb' => $password), 1);
        if(!$data_log->result()){
            return FALSE;
        }
        return $data_log->result();

    }

    public function create($data_sp){
        if(!$this->db->insert('trabajador', $data_sp)){
            return FALSE;
        }
        return TRUE;
    }
}
