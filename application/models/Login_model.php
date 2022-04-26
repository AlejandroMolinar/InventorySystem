<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login_model extends CI_model{

    public function __construct(){
        $this->load->database();
    }

    public function reed($data_si){
        if(!$this->db->insert('trabajador', $data_si)){
            return FALSE;
        }
        return TRUE;
    }

    public function create($data_sp){
        if(!$this->db->insert('trabajador', $data_sp)){
            return FALSE;
        }
        return TRUE;
    }
}
